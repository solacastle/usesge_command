#!/bin/sh
. /sybiq16/IQ.sh
. /sybiq16/SYBASE.sh

LASTDAY=`date --date="1 months ago" +%Y%m`'30'
DAY_KEY=`date --date="$1 days ago" +%Y%m%d`
MONTH_KEY=`date --date="1 months ago" +%Y%m`

echo "LASTDAY:         $LASTDAY"
echo "DAY_KEY:         $DAY_KEY"
echo "MONTH_KEY:       $MONTH_KEY"


#echo "`date` begin export ---$DATETIME_KEY---$MONTH_KEY"


#cat /dataload/groupfile/$2.sql | sed  's|DATETIME_KEY|'$DATETIME_KEY'|g'> /dataload/groupfile/$2.sql1;
#cat /dataload/groupfile/$2.sql1 | sed  's|MONTH_KEY|'$MONTH_KEY'|g'> /dataload/groupfile/$2.sql2;

cat /dataload/groupfile/VoLTE_Utilization_City.sql_sample | sed  's|LASTDAY_SAMPLE|'$LASTDAY'|g'> /dataload/groupfile/VoLTE_Utilization_City.sql1;
cat /dataload/groupfile/VoLTE_Utilization_City.sql1 | sed  's|DAY_KEY_SAMPLE|'$DAY_KEY'|g'> /dataload/groupfile/VoLTE_Utilization_City.sql2;
cat /dataload/groupfile/VoLTE_Utilization_City.sql2 | sed  's|MONTH_KEY_SAMPLE|'$MONTH_KEY'|g'> /dataload/groupfile/VoLTE_Utilization_City.sql3;

cat /dataload/groupfile/VoLTE_Utilization_Province.sql_sample | sed  's|LASTDAY_SAMPLE|'$LASTDAY'|g'> /dataload/groupfile/VoLTE_Utilization_Province.sql1;
cat /dataload/groupfile/VoLTE_Utilization_Province.sql1 | sed  's|DAY_KEY_SAMPLE|'$DAY_KEY'|g'> /dataload/groupfile/VoLTE_Utilization_Province.sql2;
cat /dataload/groupfile/VoLTE_Utilization_Province.sql2 | sed  's|MONTH_KEY_SAMPLE|'$MONTH_KEY'|g'> /dataload/groupfile/VoLTE_Utilization_Province.sql3;

cat /dataload/groupfile/VoLTE_Utilization_Terminal.sql_sample | sed  's|LASTDAY_SAMPLE|'$LASTDAY'|g'> /dataload/groupfile/VoLTE_Utilization_Terminal.sql1;
cat /dataload/groupfile/VoLTE_Utilization_Terminal.sql1 | sed  's|DAY_KEY_SAMPLE|'$DAY_KEY'|g'> /dataload/groupfile/VoLTE_Utilization_Terminal.sql2;
cat /dataload/groupfile/VoLTE_Utilization_Terminal.sql2 | sed  's|MONTH_KEY_SAMPLE|'$MONTH_KEY'|g'> /dataload/groupfile/VoLTE_Utilization_Terminal.sql3;

#dbisql -c "uid=dw;pwd=dw123;eng=XdrCenterDB_S04"  -onerror exit -nogui READ /dataload/groupfile/$2.sql2

dbisql -c "uid=dw;pwd=dw123;eng=DataCenter_S06" -host 10.40.96.136 -port 4000 -onerror exit -nogui READ /dataload/groupfile/VoLTE_Utilization_City.sql3
dbisql -c "uid=dw;pwd=dw123;eng=DataCenter_S06" -host 10.40.96.136 -port 4000 -onerror exit -nogui READ /dataload/groupfile/VoLTE_Utilization_Province.sql3
dbisql -c "uid=dw;pwd=dw123;eng=DataCenter_S06" -host 10.40.96.136 -port 4000 -onerror exit -nogui READ /dataload/groupfile/VoLTE_Utilization_Terminal.sql3


cat /dataload/groupfile/VoLTE_Utilization_City_head.txt /srcdata/VoLTE_Utilization_City_"$LASTDAY"_tmp.txt > /srcdata/VoLTE_Utilization_City_"$LASTDAY".txt
cat /dataload/groupfile/VoLTE_Utilization_Province_head.txt /srcdata/VoLTE_Utilization_Province_"$LASTDAY"_tmp.txt > /srcdata/VoLTE_Utilization_Province_"$LASTDAY".txt
cat /dataload/groupfile/VoLTE_Utilization_Terminal_head.txt /srcdata/VoLTE_Utilization_Terminal_"$LASTDAY"_tmp.txt > /srcdata/VoLTE_Utilization_Terminal_"$LASTDAY".txt

echo "begin ftp----"`date`
#sh /dataload/groupfile/ftp_file.sh "$2_$DATETIME_KEY"

sh /dataload/groupfile/transfile_ftp.sh /volte /srcdata VoLTE_Utilization_City_"$LASTDAY".txt
sh /dataload/groupfile/transfile_ftp.sh /volte /srcdata VoLTE_Utilization_Province_"$LASTDAY".txt
sh /dataload/groupfile/transfile_ftp.sh /volte /srcdata VoLTE_Utilization_Terminal_"$LASTDAY".txt

echo "end ftp======="`date`

