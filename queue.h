#include <sys/time.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

typedef struct Queue_t *Queue;

typedef enum QueueResult_t {
    QUEUE_SUCCESS,
    QUEUE_OUT_OF_MEMORY,
    QUEUE_NULL_ARGUMENT,
    QUEUE_INVALID_ARGS,
    QUEUE_FULL,
    QUEUE_EMPTY,
    QUEUE_DOES_NOT_EXSIST
    //Queue_ITEM_ALREADY_EXISTS,
} QueueResult;

Queue queueCreate(int maxsize);

int Top(Queue queue);

int isEmpty(Queue queue);

QueueResult Enqueue(Queue queue,int val,struct timeval time_of_arrival);

Queue queueCopy(Queue queue);

int getSize(Queue queue);

int getMaxSize(Queue queue);

int dequeueHead(Queue queue);

QueueResult dequeueRandom(Queue queue);

QueueResult dequeueValue(Queue queue,int value);

void queueDestroy(Queue queue);


