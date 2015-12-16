/* 4-3.c 
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
	umask(0);
	if (creat("foo", S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP ) < 0) {
		fprintf(stderr, "creat error for foo");
	}
	umask(S_IRGRP | S_IWGRP); 
	if (creat("bar", S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP ) < 0) {
		fprintf(stderr, "creat error for foo");
	}


	exit(0);
}
