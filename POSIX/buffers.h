#ifndef BUFFERS_H_
#define BUFFERS_H_

#include <unistd.h>
#include <sys/uio.h>
#include "types.h"


#define EVENT_READ  (1 << 0)
#define EVENT_WRITE (1 << 1)

#define BUFFER_STATUS_DESTROYING        (1<<0)
#define BUFFER_STATUS_CLOSED            (1<<1)
#define BUFFER_STATUS_SYM_READS         (1<<2)



typedef struct {
  wlist_id_t *queue;
  unsigned int count;
} event_queue_t;



typedef struct {
  char *contents;
  size_t max_size;
  size_t max_rsize;

  size_t start;
  size_t size;

  event_queue_t evt_queue;
  wlist_id_t empty_wlist;
  wlist_id_t full_wlist;

  unsigned int queued;
  unsigned short status;
} stream_buffer_t;


#endif
