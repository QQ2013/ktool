/* 3-1.c 
 * 测试标准输入是否能被设置位移量
 */
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <dirent.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>

#define MAXLINE 4096

static void sig_int(int);

int main(int argc, char *argv[])
{
	if (lseek(STDIN_FILENO, 0, SEEK_CUR) == -1)
	{
	    printf("cannot seek\n");
	}
	else
	{
		printf("seek OK\n");
	}
	exit(0);
}
