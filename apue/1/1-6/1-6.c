/* 1-6.c 
 * ʾ��strerror��perror
 */
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <dirent.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>

#define MAXLINE 4096

int main(int argc, char *argv[])
{
    fprintf(stderr,"EACCES: %s\n",strerror(EACCES));

	errno = ENOENT;
	perror(argv[0]);

	exit(0);
}   
