#!/bin/sh
. /sybiq16/IQ.sh
. /sybiq16/SYBASE.sh

DATETIME_KEY=`date --date="$1 days ago" +%Y%m%d`
MONTH_KEY=`date --date="$1 days ago" +%m`

#echo "`date` begin export ---$DATETIME_KEY---$MONTH_KEY"


#cat /dataload/groupfile/$2.sql | sed  's|DATETIME_KEY|'$DATETIME_KEY'|g'> /dataload/groupfile/$2.sql1;
#cat /dataload/groupfile/$2.sql1 | sed  's|MONTH_KEY|'$MONTH_KEY'|g'> /dataload/groupfile/$2.sql2;

#dbisql -c "uid=dw;pwd=dw123;eng=XdrCenterDB_S04"  -onerror exit -nogui READ /dataload/groupfile/$2.sql2

dbisql -c "uid=dw;pwd=dw123;eng=DataCenter_S06" -host 10.40.96.136 -port 4000 -onerror exit -nogui READ /dataload/groupfile/VoLTE_Utilization_City.sql
dbisql -c "uid=dw;pwd=dw123;eng=DataCenter_S06" -host 10.40.96.136 -port 4000 -onerror exit -nogui READ /dataload/groupfile/VoLTE_Utilization_Province.sql
dbisql -c "uid=dw;pwd=dw123;eng=DataCenter_S06" -host 10.40.96.136 -port 4000 -onerror exit -nogui READ /dataload/groupfile/VoLTE_Utilization_Terminal.sql


cat /dataload/groupfile/VoLTE_Utilization_City_head.txt /srcdata/VoLTE_Utilization_City_20161130_tmp.txt > /srcdata/VoLTE_Utilization_City_20161130.txt
cat /dataload/groupfile/VoLTE_Utilization_Province_head.txt /srcdata/VoLTE_Utilization_Province_20161130_tmp.txt > /srcdata/VoLTE_Utilization_Province_20161130.txt
cat /dataload/groupfile/VoLTE_Utilization_Terminal_head.txt /srcdata/VoLTE_Utilization_Terminal_20161130_tmp.txt > /srcdata/VoLTE_Utilization_Terminal_20161130.txt


echo "begin ftp----"`date`

#sh /dataload/groupfile/ftp_file.sh "$2_$DATETIME_KEY"
sh /dataload/groupfile/transfile_ftp.sh /volte /srcdata VoLTE_Utilization_City_20161130.txt
sh /dataload/groupfile/transfile_ftp.sh /volte /srcdata VoLTE_Utilization_Province_20161130.txt
sh /dataload/groupfile/transfile_ftp.sh /volte /srcdata VoLTE_Utilization_Terminal_20161130.txt

echo "end ftp======="`date`

