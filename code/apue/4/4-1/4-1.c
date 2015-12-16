/* 4-1.c 
 * 对每个命令行参数打印文件类型
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
	int           i;
	struct stat   buf;
	char          *ptr;

	for (i=1; i<argc; i++) {
		printf("%s:", argv[i]);
		if (lstat(argv[i], &buf) ==-1) {
			fprintf(stderr, "lstat error\n");
			continue;
		}
        
		if      (S_ISREG(buf.st_mode))    ptr = "regular";
		else if (S_ISDIR(buf.st_mode))    ptr = "directory";
		else if (S_ISCHR(buf.st_mode))    ptr = "charater special";
		else if (S_ISBLK(buf.st_mode))    ptr = "block special";
		else if (S_ISFIFO(buf.st_mode))   ptr = "fifo";
#ifdef  S_ISLINK
		else if (S_ISLINK(buf.st_mode))   ptr = "symbolic link";
#endif
#ifdef  S_ISLOCK
		else if (S_ISSOCK(buf.st_mode))   ptr = "socket";
#endif
		else                              ptr = "** unknown mode **";

		printf("%s\n", ptr);
	}

	exit(0);
}
