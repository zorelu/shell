#!/bin/bash
##插入自定义的变量到MongoDB表
currentTimeStamp=$[$(date +%s%N)/1000000]
#echo $currentTimeStamp
/usr/local/mongodb/bin/mongo << EOF > /dev/null
use xxwz
db.auth("zorelu","123123zz")
db.operation.insert(
{ 
    "userid" : ObjectId("599d295671f0092a13f2f3e1"), 
    "username" : "lfyywr", 
    "record" : "数据库管理-备份打包", 
    "bt" : "共备份16条", 
    "sc_id" : "", 
    "sc_name" : "", 
    "cjtime" : $currentTimeStamp
}
)
exit;
EOF
