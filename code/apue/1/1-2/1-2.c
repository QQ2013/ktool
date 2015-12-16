/* 1-2.c 
 * 将标准输入复制至标准输出 
 */
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <dirent.h>

#define BUFFSIZE 8912
int main(int argc, char *argv[])
{
    int     n;
    char    buf[BUFFSIZE];
    
    while ( (n = read(STDIN_FILENO, buf, BUFFSIZE)) > 0 ) 
    {
        if (write(STDOUT_FILENO, buf, n) != n)
        {
             fprintf(stderr,"write error\n");
			 return;
        }    
    } 
    
    if (n < 0)
    {
        fprintf(stderr,"read error\n");
		return;
    }    
    exit(0);
}

