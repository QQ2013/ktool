/* 3-4.c 
 * 对指定的描述符打印文件标志
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <dirent.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <signal.h>
#include <fcntl.h>

#define MAXLINE 4096
#define BUFFSIZE 8192
#define FILE_MODE   (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH)

int main(int argc, char *argv[])
{
	int accmode, val;

	if (argc != 2){
		fprintf(stderr, "usage: a.out <descriptor#>\n");
		return 0;
	}
	
	if (val = fcntl(atoi(argv[1]),F_GETFL, 0) < 0){
		fprintf(stderr, "fcntl error for fd %d", atoi(argv[1]));
	}

	accmode = val & O_ACCMODE;
	if      (accmode == O_RDONLY) printf("read only");
	else if (accmode == O_WRONLY) printf("write only");
	else if (accmode == O_RDWR)   printf("read write");
	else fprintf(stderr,"unknown acess mode"); 

	if (val & O_APPEND)           printf(", append");
	if (val & O_NONBLOCK)         printf(", nonblocking");
#if !defined (_POSIX_SOURCE) && defined(O_SYNC)
	if (val & O_SYNC)             printf(", synchronous writes");
#endif
	putchar('\n');
	exit(0);
}
