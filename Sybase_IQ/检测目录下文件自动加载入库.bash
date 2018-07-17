#!/bin/sh
#sh /dataload/LOAD_FILE/check_file_load_kqi.sh IM SZ 1 "/srcdata/LTE_NEW/IM" gz "stage@datacenter"

. /sybiq/SYBASE.sh
. /sybiq/IQ.sh

count=`ps -ef|grep '/dataload/LOAD_FILE/check_file_load_kqi.sh ' |grep -v grep|wc -l`
if [ $count -eq 1 ]; then
        echo "$datestr check_file_load $FILE_TYPE  is running"  
        exit;
else
        echo "$datestr check_file_load $FILE_TYPE  is down" 
fi

cd /srcdata
file=`find ./ -mmin +1 `

if [ ${#file[@]} -gt 0 ]; then
file_num=0

for list in $file
 do
 
echo "file_num---$file_num" 
       
echo "dbisql -c uid=dw;pwd=dw123;eng=DataCenter_S15 -host 10.40.96.145 -port 4000  -onerror exit -nogui READ /dataload/output/import_data.sql [$list]"
cd /dataload;
dbisql -c "uid=dw;pwd=dw123;eng=DataCenter_S15" -host 10.40.96.145 -port 4000  -onerror exit -nogui READ /dataload/output/import_data.sql [$list] 

cd /srcdata/
rm -rf $list.txt

done
else 
        echo "file_num---$file_num"
        exit;
fi