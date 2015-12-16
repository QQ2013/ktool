/* 4-2.c 
 * access 函数测试文件读写权限
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
	if (argc != 2) {
		fprintf(stderr, "usage:a.out <pathname>\n");
		return -1;
	}

	if (access(argv[1],R_OK) < 0)
	{
		fprintf(stderr, "access error for %s\n", argv[1]);
		return -1;
	} else {
		printf("read access OK\n");
	}

	if (open(argv[1], O_RDONLY) < 0) {
		fprintf(stderr, "open error for %s\n", argv[1]);
		return -1;
	} else {
		printf("open for reading OK\n");
	}
	exit(0);
}
