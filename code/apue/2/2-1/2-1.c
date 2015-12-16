/* 2-1.c 
 * 从标准输入读命令并执行+退出响应信号
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
	char     buf[MAXLINE];
	pid_t    pid;
	int      status;

	if (signal(SIGINT, sig_int) == SIG_ERR)
	{
		fprintf(stderr,"signal error");
	}

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

void sig_int(int signo)
{
    printf("interrupt\n\r%% ");
}

