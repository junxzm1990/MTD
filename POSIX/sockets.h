
#ifndef __EXE_NET__
#define __EXE_NET__


#ifndef _LARGEFILE64_SOURCE
#error "_LARGEFILE64_SOURCE should be defined"
#endif


#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <errno.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <netinet/ip.h>
#include <arpa/inet.h>
#include <assert.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <netdb.h>
#include <sys/ioctl.h>
/*include this file to attach a file to a socket*/
#include "fd.h"
#include "types.h"
#include "buffers.h"
/*define basic parameters*/
#define DEFAULT_UNUSED_PORT     30000
#define DEFAULT_NETWORK_ADDR    ((((((127 << 8) | 0) << 8) | 0) << 8) | 1) // 192.168.1.1
#define DEFAULT_HOST_NAME       "127.0.0.1"

#define SOCK_STATUS_CREATED     (1 << 0)
#define SOCK_STATUS_LISTENING   (1 << 1)
#define SOCK_STATUS_CONNECTING  (1 << 2)
#define SOCK_STATUS_CONNECTED   (1 << 3)
#define SOCK_STATUS_CLOSING     (1 << 4)






typedef struct {
  // this is to attach a symbolic file
  exe_disk_file_t * dfile

  int status;
  int type;
  int domain;
  int protocol;
//  end_point_t *local_end;
//  end_point_t *remote_end;

  // For TCP connections
  stream_buffer_t *out;     // The output buffer
  stream_buffer_t *in;      // The input buffer

  // For connecting sockets
  event_queue_t *conn_evt_queue;
  wlist_id_t conn_wlist;         // The waiting list for the connected notif.

  // For TCP listening
  stream_buffer_t *listen;
} exe_socket_t;


typedef struct {
  // For TCP/IP sockets
  struct in_addr net_addr;  // The IP address of the virtual machine
  in_port_t next_port;
  exe_socket_t __exe_sockets[MAX_PORTS];

} exe_network_t;


extern exe_network_t  __exe_net;
#endif
//int __libc_connect(int sockfd, const struct sockaddr *saddr, socklen_t addrlen)


