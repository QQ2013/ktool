/* 1-1.c 
 * 列出一个目录下的所有文件
 */
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <dirent.h>

int main(int argc, char *argv[])
{
    DIR            *dp;
    struct dirent  *dirp;
    
    if (argc != 2)
    {
        fprintf(stderr,"a single argument (the directory name) is required\n");
        return;
    }

    if ((dp=opendir(argv[1])) == NULL)
    {
        fprintf(stderr,"can't open %s\n", argv[1]);
        return;
    }
    
    while ((dirp=readdir(dp)) != NULL)
    {
        printf("%s\n",dirp->d_name);
    }
    
    closedir(dp);
    exit(0);
}

