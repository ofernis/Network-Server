#include "queue.h"

typedef struct node_t
{
    int value;
    struct node_t* next;
    struct timeval time_of_arrival;
} *Node;

struct Queue_t
{
    int max_size;
    int nodes_count;
    Node first;
    Node last;
};

Queue queueCreate(int max_size)
{
    Queue new_queue = malloc(sizeof(*new_queue)); 
    if(new_queue==NULL)
    {
        return NULL;
    }
    new_queue->nodes_count=0;
    new_queue->first=NULL;
    new_queue->last=NULL;
    new_queue->max_size=max_size;

    return new_queue;
}

static Node createNode(int val,struct timeval time_of_arrival)
{
    Node new_node = malloc(sizeof(*new_node)); 
    if(new_node == NULL)
    {
        return NULL;
    }
    new_node->value=val;
    new_node->next=NULL;
    new_node->time_of_arrival.tv_sec=time_of_arrival.tv_sec;
    new_node->time_of_arrival.tv_usec=time_of_arrival.tv_usec;

    return new_node;
}

int Top(Queue queue)
{
    if(queue->first==NULL)
    {
        return -1;
    }
    return queue->first->value;
}

QueueResult Enqueue(Queue queue,int val,struct timeval time_of_arrival)
{
    if(queue->nodes_count+1>queue->max_size)
    {
        return QUEUE_FULL;
    }
    Node new_node=createNode(val,time_of_arrival);
    if(new_node==NULL)
    {
        return QUEUE_OUT_OF_MEMORY;
    }
    queue->nodes_count++;
    if(queue->first==NULL) //empty
    {
        queue->first=new_node;
        queue->last=new_node;
    }
    else
    {
    queue->last->next=new_node;
    queue->last=new_node;
    }
    return QUEUE_SUCCESS;
}

Queue queueCopy(Queue queue) 
{
    if (queue == NULL) {
        return NULL;
    }

    Queue queue_cpy = queueCreate(queue->max_size);

    if (queue_cpy == NULL) {
        return NULL;
    }

    Node current = queue->first;
    while (current != NULL) {
        Enqueue(queue_cpy, current->value, current->time_of_arrival);
        current = current->next;
    }
    
    queue_cpy->max_size = queue->max_size;
    queue_cpy->nodes_count = queue->nodes_count;
    
    return queue_cpy;
}

struct timeval getArrivalTime(Queue queue) 
{
    return (isEmpty(queue) ? (struct timeval) { 0 } : queue->first->time_of_arrival);
}

int getSize(Queue queue)
{
    return queue->nodes_count;
}

int getMaxSize(Queue queue)
{
    return queue->max_size;
}

int isEmpty(Queue queue) {
    return (queue->first == NULL);
}

int dequeueHead(Queue queue)
{
    if (isEmpty(queue))
    { 
        return -1;
    }
    
    int value =queue->first->value;
   
    Node node=queue->first;
    if(queue->first==queue->last)
    {
       queue->first=NULL;
       queue->last=NULL;
    }
    else
    {    
        queue->first=queue->first->next;
    }
    free(node);
    node = NULL;
    queue->nodes_count--;
    return value;

}
int dequeueTail(Queue queue)
{
    if(queue->first==NULL)
    {
        return -1;
    }
    int value =queue->last->value;
    dequeueValue(queue,value);
    return value;

}
QueueResult dequeueValue(Queue queue,int value)
{
    if(isEmpty(queue))
    {
        return QUEUE_EMPTY;
    }

    Node node=queue->first,prev=NULL;
    while(node!=NULL)
    {
       if(node->value==value)
       {
            if(prev==NULL)
            {
                dequeueHead(queue);
            }
            else if(node->next==NULL)
            {
                queue->nodes_count--;
                queue->last=prev;
                free(node);
            }
            else
            {
                queue->nodes_count--;
                prev->next=node->next;
                free(node);
            }
            return QUEUE_SUCCESS;
       }
       prev=node;
       node=node->next;
    }
    return QUEUE_DOES_NOT_EXSIST;
}


QueueResult dequeueRandom(Queue queue)
{
    if(queue->first==NULL)
    {
        return QUEUE_EMPTY;
    }
    Node node=queue->first;
    for(int i = (queue->nodes_count > 1) ? rand() % queue->nodes_count : 0
                ; i > 0
                ; i--)
    {
        node=node->next;
    }
    int val_to_return = node->value;
    dequeueValue(queue, node->value);
    //queue->nodes_count--;
    return val_to_return;
}


void queueDestroy(Queue queue)
{
    if(queue->first==NULL)
    {
        free(queue);
        return;
    }
    Node curr=queue->first, next1=curr->next;

    while(next1!=NULL)
    {
        free(curr);
        curr=curr->next;
        curr->next=next1->next;
    }
    free(curr);
    free(queue);
}