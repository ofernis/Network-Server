#include <stdio.h>
#include "queue.h"

void queuePrint(Queue q) {
    printf("printing: \n");
    printf("Queue size: %d\n", getSize(q));

    while (!isEmpty(q)) {
        printf("%d\n", dequeueHead(q));
    }
}

Queue testCreateQueue() {
    Queue new_q = queueCreate(10);
    printf("Created Successfully \n");
    printf("Queue current size: %d\n", getSize(new_q));
    printf("Queue max size: %d\n\n", getMaxSize(new_q));
    return new_q;
}

void testEnqueue(Queue q) {
    for (int i = 0; i < 10; ++i) {
        struct timeval tv;
        tv.tv_sec = rand();
        tv.tv_usec = rand();
        Enqueue(q, i + 1, tv);
    }
    queuePrint(queueCopy(q));
}

void testRandomDequeue(Queue q) {
    printf("Random dequeue: \n");
    printf("Queue size: %d\n", getSize(q));

    while (!isEmpty(q)) {
        printf("%d\n", dequeueRandom(q));
    }
}

void testDequeue(Queue q) {
    for (int i = 0; i < 5; ++i)
        dequeueHead(q);

    queuePrint(queueCopy(q));

    for (int i = 0; i < 5; ++i) 
        dequeueHead(q);

    if (Top(q) == -1) {
        printf("Queue is empty now!\n");
    }

    if (dequeueHead(q) == -1) {
        printf("Dequeue success!\n");
    }
}

void testDestroyQueue(Queue q) {
    queueDestroy(q);
} 

void testBundle() {
    Queue q1 = testCreateQueue();
    testEnqueue(q1);
    Queue q2 = queueCopy(q1);
    testRandomDequeue(q2);
    testDequeue(q1);
    testDestroyQueue(q1);
}

int main() {
    testBundle();
    printf("YAY! passed??\n");
    return 0;
}