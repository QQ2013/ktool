/* 1-5.c 
 * 从标准输入读命令并执行
 */
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <dirent.h>
#include <sys/types.h>
#include <sys/wait.h>
#define MAXLINE 4096

int main(int argc, char *argv[])
{   
	char     buf[MAXLINE];
	pid_t    pid;
	int      status;

	printf("%% ");
	while (fgets(buf, MAXLINE, stdin) != NULL)
	{
        buf[strlen(buf)-1] = 0;
		
		if ((pid=fork())<0)
		{
		    fprintf(stderr,"fork error");
			return;
		}
		else if (pid == 0)
		{
			execlp(buf, buf, (char *)0);
			fprintf(stderr,"couldn't execute: %s", buf);
			exit(127);
		}

		if ((pid=waitpid(pid,&status,0)) < 0)
		{
		    fprintf(stderr, "waitpid error");
			return;
		}
		printf("%%");
	}
    exit(0);
}

