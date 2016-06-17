
#platform=Arm9_GM8126_4.4.7

#CROSS_COMPILE=arm-buildroot-linux-uclibcgnueabi-

CC=$(CROSS_COMPILE)gcc

SERVER_SRC += ./source/AVAPIs_Server.c

ifeq ("$(platform)","x86")
        CFLAGS=-m32
endif

all:
	$(CC) $(CFLAGS) -O2 -Wall $(SERVER_SRC) -I./include -L/usr/lib -lIOTCAPIs -lAVAPIs -lpthread -o server

clean:
	rm -rf *.o *~ *.bak server
