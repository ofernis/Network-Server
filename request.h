#ifndef __REQUEST_H__

struct thread_stats_t {
   int handler_thread_id;
   int* handler_thread_req_count;
   int* handler_thread_static_req_count;
   int* handler_thread_dynamic_req_count;
};

struct stats_t {
   struct timeval arrival_time;
   struct timeval dispatch_interval;
   struct thread_stats_t handler_thread_stats;
};

void requestHandle(int fd, struct stats_t stats);

#endif
