/* 4-5.c 
 * 打开一个文件然后unlink
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
#include <linux/limits.h>
#define MAXLINE 4096
#define BUFFSIZE 8192
#define FILE_MODE   (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH)

int main(int argc, char *argv[])
{
	if (open("tempfile", O_RDWR | O_CREAT) < 0) {
		fprintf(stderr, "open error\n");
		return -1;
	}

	if (unlink("tempfile") < 0) {
		fprintf(stderr, "unlink error\n");
	}

	printf("file unlinked\n");
	sleep(150);
	printf("done\n");
	exit(0);
}
