#!/bin/sh
while true;do
        count=`ps -ef|grep postgresql|grep -v grep`
        if [ "$?" != "0" ];then
echo    ">>>>no sql,run it"
/etc/init.d/postgresql start
if [ $?! = 0 ];then
echo "faile"
else
echo "start ok"	
fi
else
echo ">>>>sql is runing..."
fi
break
done
