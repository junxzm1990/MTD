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

#define DEFAULT_UNUSED_PORT     30000
#define DEFAULT_NETWORK_ADDR    ((((((127 << 8) | 0) << 8) | 0) << 8) | 1) // 192.168.1.1
#define DEFAULT_HOST_NAME       "127.0.0.1"

#define SOCK_STATUS_CREATED     (1 << 0)
#define SOCK_STATUS_LISTENING   (1 << 1)
#define SOCK_STATUS_CONNECTING  (1 << 2)
#define SOCK_STATUS_CONNECTED   (1 << 3)
#define SOCK_STATUS_CLOSING     (1 << 4)


//int __libc_connect(int sockfd, const struct sockaddr *saddr, socklen_t addrlen)


int puts(const char * str) __attribute__((weak));

int puts(const char * str) 
{
//	printf("The output is done via printf %s\n", str);
	return 1;
}


int __libc_connect(int sockfd, const struct sockaddr *saddr, socklen_t addrlen)
{

//	return 1;
 printf("**********************This is the weak reference of Fucking C O N N E C T***********************\n");

	return 1;
}

int socket(int family, int type, int protocol)
{

	printf("**********************This is the weak reference of Fucking S O C K E T***********************\n");
                         return 10;

}


int getaddrinfo(const char *node, const char *service, const struct addrinfo *hints, struct addrinfo **res)


 {

 printf("Hello the exp is fucking working");

printf("**********************This is the weak reference of getaddrinfo***********************\n");
if (node == NULL && service == NULL) {
    return EAI_NONAME;
  }

  if (hints) {
    if (hints->ai_family != AF_INET && hints->ai_family != AF_UNSPEC) {
      klee_warning("unsupported family (EAI_ADDRFAMILY)");
      return EAI_ADDRFAMILY;
    }

    if (hints->ai_socktype != SOCK_STREAM && hints->ai_socktype != 0) {
      klee_warning("unsupported socket type (EAI_SOCKTYPE)");
      return EAI_SOCKTYPE;
    }

    if (hints->ai_protocol != 0 && hints->ai_protocol != IPPROTO_TCP) {
      klee_warning("unsupported protocol (EAI_SERVICE)");
      return EAI_SERVICE;
    }

    // We kinda ignore all the flags, they don't make sense given the
    // current limitations of the model.
	
	 if (hints->ai_addr || hints->ai_addrlen || hints->ai_canonname || hints->ai_next) {
      return EAI_SYSTEM;
    }
  }

  int port = 0;

  if (service != NULL) {
    klee_warning("Getting the port number for service\n");
    port = atoi(service);
    if (port == 0 && strcmp(service, "0") != 0) {
      klee_warning("service name not numeric, unsupported by model");
      return EAI_SERVICE;
    }

    if (port < 0 || port > 65535) {
      return EAI_SERVICE;
    }
  }


  if (node != NULL) {
    if (strcmp(node, "localhost") != 0 && strcmp(node, DEFAULT_HOST_NAME) != 0) {
      klee_warning("resolving to localhost\n");
    }
  }


  struct addrinfo *info = (struct addrinfo*)malloc(sizeof(struct addrinfo));
  memset(info, 0, sizeof(struct addrinfo));

  struct sockaddr_in *addr = (struct sockaddr_in*)malloc(sizeof(struct sockaddr_in));
  memset(addr, 0, sizeof(struct sockaddr_in));

  info->ai_addr = (struct sockaddr*)addr;
  info->ai_addrlen = sizeof(struct sockaddr_in);
  info->ai_family = AF_INET;
  info->ai_protocol = 0;
  info->ai_socktype = SOCK_STREAM;

  addr->sin_family = AF_INET;
  addr->sin_addr.s_addr = htonl(DEFAULT_NETWORK_ADDR);
  if (port != 0)
    addr->sin_port = htons((uint16_t)port);

  *res = info;
  return 0;
 }
