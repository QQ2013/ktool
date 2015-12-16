/* 3-3.c 
 * 将标准输入复制到标准输出
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

#define MAXLINE 4096
#define BUFFSIZE 8192
#define FILE_MODE   (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH)

int main(int argc, char *argv[])
{
    int n;
	char buf[BUFFSIZE];
	
	while ((n= read(STDIN_FILENO, buf, BUFFSIZE)) > 0)
	{
	    if (write(STDOUT_FILENO, buf, n) != n)
		{
			fprintf(stderr, "write error");
		}
	}

	if (n < 0 )
	{
	    fprintf(stderr, "read error");
	}
	exit(0);
}
