#!/bin/sh

#获取当前系统的版本时64bit 或者 32bit 
arch=`getconf LONG_BIT`
echo $arch

if [ $arch -eq 32 ];then
	echo install 32 bit lib 
	cp -rf ./x86/*.so /usr/lib/ 
else
	echo install 64bit lib
	cp -rf ./x64/*.so /usr/lib/ 
fi

