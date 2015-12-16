/* 1-7.c 
 * 打印用户ID和组ID
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
    printf("uid=%d, gid=%d\n", getuid(), getgid());
	exit(0);
}   
