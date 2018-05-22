CC=gcc
CFLAGS=-I.

all: withMutex withoutMutex factorial deadLock

with_mutex : with_mutex.c
	$(CC) with_mutex.c -o with_mutex -lpthread $(CFLAGS)
	
without_mutex : without_mutex.c
	$(CC) without_mutex.c -o without_mutex -lpthread $(CFLAGS)
	
factorial : factorial.c
	$(CC) factorial.c -o factorial -lpthread $(CFLAGS)

deadlock : deadlock.c
	$(CC) deadlock.c -o deadlock -lpthread $(CFLAGS)

clean :
	rm without_mutex with_mutex factorial deadlock