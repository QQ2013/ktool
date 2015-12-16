/* 4-6.c 
 * utime修改文件更改时间
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
#include <utime.h>
#include <linux/limits.h>
#define MAXLINE 4096
#define BUFFSIZE 8192
#define FILE_MODE   (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH)

int main(int argc, char *argv[])
{
	int i;
	struct stat     statbuf;
	struct utimbuf timebuf;

	for (i=1; i<argc; i++) {
		if (stat(argv[i], &statbuf) < 0) {
			fprintf(stderr, "%s:stat error", argv[i]);
			continue;
		}

		if (open(argv[i], O_RDWR | O_TRUNC) < 0) {
			fprintf(stderr, "%s:open error", argv[i]);
			continue;
		}

		timebuf.actime = statbuf.st_atime;
		timebuf.modtime = statbuf.st_mtime;
		if (utime(argv[i], &timebuf) < 0) {
			fprintf(stderr, "%s:utime error", argv[i]);
			continue;
		}
	}

	exit(0);
}
