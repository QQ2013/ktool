/* 1-4.c 
 * ��ӡ����ID
 */
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <dirent.h>

int main(int argc, char *argv[])
{   
	printf("hello world from peocess ID %d\n", getpid());
    exit(0);
}

