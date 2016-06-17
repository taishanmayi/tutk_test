
#platform=Arm9_GM8126_4.4.7
platform=x86

#CROSS_COMPILE=arm-buildroot-linux-uclibcgnueabi-

CC=$(CROSS_COMPILE)gcc

ifeq ("$(platform)","")
        platform=x86
endif

ifeq ("$(platform)","x86")
        CFLAGS=-m32
endif

all:
	@echo === Target Platform [$(platform)] ===  	
	$(CC) $(CFLAGS) -O2 -Wall AVAPIs_Server.c -I./ -I../../../Include -L'../../../Lib/Linux/$(platform)' -lIOTCAPIs -lAVAPIs -lpthread -o AVAPIs_Server
	$(CC) $(CFLAGS) -O2 -Wall AVAPIs_Client.c -I./ -I../../../Include -L'../../../Lib/Linux/$(platform)' -lIOTCAPIs -lAVAPIs -lpthread -o AVAPIs_Client
	

clean:
	rm -rf *.o *~ *.bak AVAPIs_Server AVAPIs_Client
