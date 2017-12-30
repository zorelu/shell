###使用钉钉机器人接口进行post数据
###使用bash
####添加登陆脚本
###vim .bash_profile
###sh /opt/login.sh
cd ~
echo sh /opt/login.sh  >> .bash_profile


cat >> /opt/login.sh << ”EOF“ > /dev/null
#!/bin/bash
###接口地址
url=https://oapi.dingtalk.com/robot/send?access_token=fcd913f131c04eafd280a599c0061f13194be7062d3336b4e9aa396746ec0247
u=$USER
b=$(date '+%Y-%m-%d,%H:%M:%S')
h=`hostname`
#hip=`lastlog -u root | awk '{print $3}'|sed -n '2p'`
userip=`lastlog -u root | awk '{print $3}'|sed -n '2p'`
a=$(echo "当前主机为:$h,当前登录主机ip为:$hip,当前登录用户:$u,当前时间登陆时间:$b,当前登录的用ip:$userip")
#echo $a
c=`curl  -s -H "Content-type: application/json" -X POST -d '{"msgtype":"text","text":{"content":"'$a'"},"at":{"atMobiles":["189xxxx8325","189xxxx8325"]}}' $url`
echo $c,$b >> /var/log/login.log  >/dev/null 
EOF 
