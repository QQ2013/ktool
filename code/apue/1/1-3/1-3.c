/* 1-3.c 
 * 用标准I/O将标准输入复制至标准输出 
 */
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <dirent.h>

int main(int argc, char *argv[])
{
    int     c;
    
    while ( (c = getc(stdin)) != EOF ) 
    {
        if (putc(c, stdout) == EOF) 
        {
             fprintf(stderr,"output error\n");
			 return;
        }    
    } 
    
    if (ferror(stdin))
    {
        fprintf(stderr,"input error\n");
		return;
    }    
    exit(0);
}

