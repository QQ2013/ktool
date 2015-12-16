/* 3-2.c 
 * 创建一个具有空洞的文件
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
#define FILE_MODE   (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH)

char buf1[] = "abcdefghij";
char buf2[] = "ABCDEFGHIJ";
int main(int argc, char *argv[])
{
	int fd;

	if ((fd = creat("file.hole",FILE_MODE)) < 0)
	{
	    fprintf(stderr, "creat error");
	}

	if (write(fd, buf1, 10) != 10)
	{
		fprintf(stderr, "buf1 write error");
	}
    /* offset now = 10 */

	if (lseek(fd, 40, SEEK_SET) == -1)
	{
	    fprintf(stderr, "lseek error");
	}
    /* offset now = 40 */

	if (write(fd, buf2, 10) != 10)
	{
		fprintf(stderr, "buf2 write error");
	}
    /* offset now = 50 */

	exit(0);
}
