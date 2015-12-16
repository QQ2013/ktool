/* 4-4.c 
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
	struct stat   statbuf;
	if (stat("foo", &statbuf) < 0) {
		fprintf(stderr, "stat error for foo\n");
		return -1;
	}

	if (chmod("foo", (statbuf.st_mode & ~S_IXGRP | S_ISGID)) < 0) {
	    fprintf(stderr, "chmod error for foo\n");
		return -1;
	}

	if (chmod("bar", S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH) < 0) {
		fprintf(stderr, "chmod error for bar");
	}
	exit(0);
}
