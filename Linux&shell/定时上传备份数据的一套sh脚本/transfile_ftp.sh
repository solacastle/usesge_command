#!/bin/sh 

usename="jiangsu"
passwd="XNftp@0128"
echo $passwd
echo $usename
file_path=$1
 
echo $file_path
ftp -n<<!
open 172.17.64.19
user ${usename} ${passwd} 
binary
prompt
cd ${file_path}
lcd $2
mput "$3"
close
bye
!