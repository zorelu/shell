##获取循环的时间错


for i in {1..30}
do
   #echo $i
   #echo date -d '2013-2-$i) 22:14' +%s

   b=$[$(date -d '2017-10-'$i' 22:14:22' +%s%N)/1000000]
   echo $b

done


##其他的demo
#!/bin/bash
date_today=`date -d '1 day ago' +%Y%m%d`

#最近7天
date_befor_7day=`date -d '7 day ago' +%Y%m%d`

#上一个完整周(周一到周日)  
OFDAY="`date "+%u"`"
STEPOFDAY="`expr $OFDAY + 6`"
date_befor_weekday="`date -d '-'$STEPOFDAY' day' "+%Y-%m-%d"`"
date_befor_weekday_end="`date -d '-'$OFDAY' day' "+%Y-%m-%d"`"

#本月
date_this_month=`date +%Y%m01`

#上一个完整月
date_befor_month=`date -d '1 month ago' +%Y%m01`

#最近三个月
date_befor_3month=`date -d '3 month ago' +%Y%m01`

#上个季度

echo "当天:$date_today"
echo "最近7天:$date_befor_7day - $date_today"
echo "上一个完整周:$date_befor_weekday - $date_befor_weekday_end"
echo "本月内:$date_this_month - $date_today"
echo "上个完整月:$date_befor_month - $date_this_month"
