#!/bin/sh
. /sybiq/IQ.sh
. /sybiq/SYBASE.sh

echo "IP:            $2"

DATE1=`date -d "$1" "+%Y%m%d%H"`
DATE2=`date -d "$1" "+%d"`
DATE3=`date -d "$1" "+%Y-%m-%d"`
DATE4=`date -d "$1" "+%H:%M:%S"`
DATE5=`date -d "1 hour $1" "+%H:%M:%S"`

echo "DATE1:         $DATE1"
echo "DATE2:         $DATE2"
echo "DATE3:         $DATE3"
echo "DATE4:         $DATE4"
echo "DATE5:         $DATE5"

rm -rf User_Cell_SE.sql*_$DATE1
rm -rf User_Cell_SE_$DATE1.txt
rm -rf User_Cell_SE_$DATE1.txt.gz

cat /dataload/User_Cell_SE.sql_sample | sed  's|DATE1_SAMPLE|'$DATE1'|g'> /dataload/User_Cell_SE.sql1_$DATE1;
cat /dataload/User_Cell_SE.sql1_$DATE1 | sed  's|DATE2_SAMPLE|'$DATE2'|g'> /dataload/User_Cell_SE.sql2_$DATE1;
cat /dataload/User_Cell_SE.sql2_$DATE1 | sed  's|DATE3_SAMPLE|'$DATE3'|g'> /dataload/User_Cell_SE.sql3_$DATE1;
cat /dataload/User_Cell_SE.sql3_$DATE1 | sed  's|DATE4_SAMPLE|'$DATE4'|g'> /dataload/User_Cell_SE.sql4_$DATE1;
cat /dataload/User_Cell_SE.sql4_$DATE1 | sed  's|DATE5_SAMPLE|'$DATE5'|g'> /dataload/User_Cell_SE.sql5_$DATE1;

dbisql -c "uid=dw;pwd=dw123" -host "$2" -port 4000 -onerror exit -nogui READ /dataload/User_Cell_SE.sql5_$DATE1
rm -rf User_Cell_SE.sql*_$DATE1
cd /dataload/;
gzip User_Cell_SE_$DATE1.txt



rm -rf User_Cell_CTL.sql*_$DATE1
rm -rf User_Cell_CTL_$DATE1.txt
rm -rf User_Cell_CTL_$DATE1.txt.gz

cat /dataload/User_Cell_CTL.sql_sample | sed  's|DATE1_SAMPLE|'$DATE1'|g'> /dataload/User_Cell_CTL.sql1_$DATE1;
cat /dataload/User_Cell_CTL.sql1_$DATE1 | sed  's|DATE2_SAMPLE|'$DATE2'|g'> /dataload/User_Cell_CTL.sql2_$DATE1;
cat /dataload/User_Cell_CTL.sql2_$DATE1 | sed  's|DATE3_SAMPLE|'$DATE3'|g'> /dataload/User_Cell_CTL.sql3_$DATE1;
cat /dataload/User_Cell_CTL.sql3_$DATE1 | sed  's|DATE4_SAMPLE|'$DATE4'|g'> /dataload/User_Cell_CTL.sql4_$DATE1;
cat /dataload/User_Cell_CTL.sql4_$DATE1 | sed  's|DATE5_SAMPLE|'$DATE5'|g'> /dataload/User_Cell_CTL.sql5_$DATE1;

dbisql -c "uid=dw;pwd=dw123" -host "$2" -port 4000 -onerror exit -nogui READ /dataload/User_Cell_CTL.sql5_$DATE1
rm -rf User_Cell_CTL.sql*_$DATE1

cd /dataload/;
gzip User_Cell_CTL_$DATE1.txt

