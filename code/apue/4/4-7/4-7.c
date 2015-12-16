/* 4-7.c 
 * 递归降序遍历目录层次结构，并按照文件类型技术
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
#include <limits.h>
#define MAXLINE 4096
#define BUFFSIZE 8192
#define FILE_MODE   (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH)

//function type that's call for each filename
typedef int Myfunc(const char *, const struct stat *,int);

static Myfunc myfunc;
static int    myftw(char *,Myfunc *);
static int    dopath(Myfunc *);
static long nreg, ndir, ndir, nblk, nchr, nfifo, nslink, nsock, ntot;
int main(int argc, char *argv[])
{
	int ret;

	if (argc != 2) {
		fprintf(stderr,"usage:ftw <starting-pathname");
	}

	ret = myftw(argv[1], myfunc);

	if ((ntot = nreg + ndir + nblk + nchr + nfifo + nslink + nsock) == 0) {
		ntot = 0;
	}

	printf("regular files  = %71d, %5.f %%\n", nreg, nreg*100.0/ntot);
	printf("directories    = %71d, %5.f %%\n", ndir, ndir*100.0/ntot);
	printf("block special  = %71d, %5.f %%\n", nblk, nblk*100.0/ntot);
	printf("char special   = %71d, %5.f %%\n", nchr, nchr*100.0/ntot);
	printf("FIFOs          = %71d, %5.f %%\n", nchr, nchr*100.0/ntot);
	printf("symbolic links = %71d, %5.f %%\n", nslink, nslink*100.0/ntot);
	printf("sockets        = %71d, %5.f %%\n", nsock, nsock*100.0/ntot);

	exit (ret);
}

/*
 * Descend through the hierarchy, starting at "pathname".
 * The caller's func() is called for every file.
 */

#define FTW_F    1       //file other than directory
#define FTW_D    2       //directory
#define FTW_DNR  3       //directory that can't be read
#define FTW_NS   4       //file that can't stat

static char fullpath[1024];

static int myftw(char *pathname, Myfunc *func)
{
	//fullpath = path_alloc(NULL);//malloc's for PATH_MAX+1 bytes
	strcpy(fullpath, pathname); //initialize fullpath
	return(dopath(func));
}

/*
 * Descend through the hierarchy, starting at "fullpath".
 * If "fullpath" is anything other than a directory, we lstat it,
 * call func(), and return. For a directory, we call ourself
 * recursively for each name in the directory.
 */
static int dopath(Myfunc *func)
{
	struct stat    statbuf;
	struct dirent  *dirp;
	DIR            *dp;
	int            ret;
	char           *ptr;

	if (lstat(fullpath, &statbuf) < 0) {
		return (func(fullpath, &statbuf, FTW_NS)); //stat error
	}

	if (S_ISDIR(statbuf.st_mode) == 0) {
		return (func(fullpath, &statbuf, FTW_F)); //not a directory
	}

	/*
	 * It's a directory. First call func() for the directory,
	 * then process each filename in the directory.
	 */

	if ((ret = func(fullpath, &statbuf, FTW_D)) != 0) {
		return (ret);
	}

	ptr = fullpath + strlen(fullpath); //point to end of fullpath
	*ptr++ = '/';
	*ptr = 0;

	if ((dp = opendir(fullpath)) == NULL) {
		return (func(fullpath, &statbuf, FTW_DNR)); //can't read directory
	}

	while ((dirp = readdir(dp)) != NULL) {
		if (strcmp(dirp->d_name, ".") == 0 || strcmp(dirp->d_name, "..") == 0) {
			continue;
		}
		strcpy(ptr, dirp->d_name); //append name after slash

		if ((ret=dopath(func)) != 0) {//recursive
			break; //time to leave 
		}
	}

	ptr[-1] = 0;

	if (closedir(dp) < 0) {
		fprintf(stderr, "can't nor close directory %s", fullpath);
	}

	return (ret);
}

static int myfunc(const char *pathname, const struct stat *statptr, int type)
{
	switch(type) {
		case FTW_F:
			switch (statptr->st_mode & S_IFMT) {
				case S_IFREG:   nreg++;    break;
				case S_IFBLK:   nblk++;    break;
				case S_IFCHR:   nchr++;    break;
				case S_IFIFO:   nfifo++;   break;
				case S_IFLNK:   nslink++;  break;
				case S_IFSOCK:  nsock++;   break;
				case S_IFDIR:
								fprintf(stderr, "for S_IFDIR for %s", pathname);
								//directories should have type = FTW_D
			}
			break;
		case FTW_D:
			ndir++;
			break;
		case FTW_DNR:
			fprintf(stderr,"can't read directory %s",pathname);
			break;
		case FTW_NS:
			fprintf(stderr, "stat error for %s", pathname);
			break;
		default:
			fprintf(stderr, "unknown type %d for pathname %s", type, pathname);
	}
	return (0);
}


