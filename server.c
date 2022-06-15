#include "segel.h"
#include "request.h"
#include <pthread.h>
#include "queue.h"

#define BAD_KEY -1
#define BLOCK 1
#define DROP_TAIL 2
#define DROP_RANDOM 3
#define DROP_HEAD 4

#define MAX_POLICY_LEN 7

typedef struct {
    char *key;
    int value;
} LookUpNode;

static LookUpNode look_up_table[] = {
    { "block", BLOCK } ,
    { "dt", DROP_TAIL } ,
    { "random", DROP_RANDOM } ,
    { "dh", DROP_HEAD } ,
};

#define NUM_OF_KEYS (sizeof(look_up_table) / sizeof(LookUpNode))

int getKeyFromStr(char *key) {
    for (int i = 0; i < NUM_OF_KEYS; ++i) {
        LookUpNode current = look_up_table[i];
        if (strcmp(current.key, key) == 0) {
            return current.value;
        }
    }
    return BAD_KEY;
}

Queue waiting_reqs_queue;
Queue curr_handled_reqs_queue;
pthread_mutex_t m;
pthread_cond_t cond;
pthread_cond_t blocking_cond;
int *static_thread_count_arr;
int *dynamic_thread_count_arr;
int *total_thread_count_arr;

// 
// server.c: A very, very simple web server
//
// To run:
//  ./server <portnum (above 2000)>
//
// Repeatedly handles HTTP requests sent to this port number.
// Most of the work is done within routines written in request.c
//

// HW3: Parse the new arguments too
void getargs(int *port, int argc, char *argv[], int *num_of_workers, int *size_of_queue, char *schedule)
{
    if (argc < 5) {
	fprintf(stderr, "Usage: %s <port>\n", argv[0]);
	exit(1);
    }
    *port = atoi(argv[1]);
    *num_of_workers = atoi(argv[2]); 
    *size_of_queue = atoi(argv[3]);
    strcpy(schedule, argv[4]);
}

void* thread_main_func(void *arguments) {
    int thread_index = ((int*)arguments)[0];
    while (1) {
        pthread_mutex_lock(&m);

        while (isEmpty(waiting_reqs_queue)) {
            pthread_cond_wait(&cond, &m);
        }
        
        struct timeval time_of_arrival = getArrivalTime(waiting_reqs_queue);
        int curr_fd = dequeueHead(waiting_reqs_queue);
        Enqueue(curr_handled_reqs_queue, curr_fd, time_of_arrival);
        pthread_mutex_unlock(&m);

        struct timeval time_of_handling;
        gettimeofday(&time_of_handling, NULL);

        struct thread_stats_t thread_stats = { thread_index, total_thread_count_arr, static_thread_count_arr, dynamic_thread_count_arr };
        struct stats_t stats = { time_of_arrival, time_of_handling, thread_stats };
        requestHandle(curr_fd, stats);
        close(curr_fd);

        pthread_mutex_lock(&m);
        dequeueValue(curr_handled_reqs_queue, curr_fd);
        pthread_cond_signal(&blocking_cond);
        pthread_mutex_unlock(&m);
    }

    return NULL;
}


int main(int argc, char *argv[])
{
    int listenfd, connfd, port, clientlen;
    struct sockaddr_in clientaddr;
    char schedalg[MAX_POLICY_LEN];
    int num_of_workers, size_of_queue;

    getargs(&port, argc, argv, &num_of_workers, &size_of_queue, schedalg);
    waiting_reqs_queue = queueCreate(size_of_queue);
    curr_handled_reqs_queue = queueCreate(num_of_workers);

    pthread_t *thread_arr = (pthread_t*) malloc(sizeof(*thread_arr) * num_of_workers);
    for(int i = 0; i < num_of_workers; ++i) {
        int thread_args = i; // verify correct args for "thread_main_func"
        pthread_create(thread_arr + i, NULL, thread_main_func, (void*) &thread_args); //verify: thread_arr + i
    }

    static_thread_count_arr = malloc(sizeof(*static_thread_count_arr) * num_of_workers);
    dynamic_thread_count_arr = malloc(sizeof(*dynamic_thread_count_arr) * num_of_workers);
    total_thread_count_arr = malloc(sizeof(*total_thread_count_arr) * num_of_workers);

    for(int i = 0; i < num_of_workers; ++i) {
        static_thread_count_arr[i] = 0;
        dynamic_thread_count_arr[i] = 0;
        total_thread_count_arr[i] = 0;
    }

    pthread_mutex_init(&m, NULL);
    pthread_cond_init(&cond, NULL);
    pthread_cond_init(&blocking_cond, NULL);

    listenfd = Open_listenfd(port);
    while (1) {
        clientlen = sizeof(clientaddr);
        connfd = Accept(listenfd, (SA *)&clientaddr, (socklen_t *) &clientlen);

        pthread_mutex_lock(&m);
        //handle overload by policy
        if (size_of_queue <= getSize(curr_handled_reqs_queue) + getSize(waiting_reqs_queue)) {
            switch (getKeyFromStr(schedalg)) {
                case BLOCK:
                    while (size_of_queue <= getSize(curr_handled_reqs_queue) + getSize(waiting_reqs_queue)) {
                        pthread_cond_wait(&blocking_cond, &m);
                    }
                    break;

                case DROP_TAIL:
                    close(connfd);
                    pthread_mutex_unlock(&m);
                    continue;
                
                case DROP_RANDOM:
                    if (isEmpty(waiting_reqs_queue)) {
                        close(connfd);
                        pthread_mutex_unlock(&m);
                        continue;
                    }
                    else {
                        int num_of_drop_reqs = ceil(((double) getSize(waiting_reqs_queue)) * 0.3);
                        for (int i = 0; i < num_of_drop_reqs; ++i) {
                            if (isEmpty(waiting_reqs_queue)) {
                                break;
                            }
                            close(dequeueRandom(waiting_reqs_queue));
                        }
                    }
                    break;

                case DROP_HEAD:
                    if (isEmpty(waiting_reqs_queue)) {
                        close(connfd);
                        pthread_mutex_unlock(&m);
                        continue;
                    }
                    else {
                        close(dequeueHead(waiting_reqs_queue));
                    }
                    break;
            }
            
        }
        struct timeval time_of_arrival;
        gettimeofday(&time_of_arrival, NULL);
        Enqueue(waiting_reqs_queue, connfd, time_of_arrival);
        pthread_cond_signal(&cond);
        pthread_mutex_unlock(&m);
    }
}


    


 
