count=`ps -ef|grep "run_end_1122.sh volte" |grep -v grep|wc -l`
echo `date`
/dataload/groupftp/run_end_1122.sh /ptn /ftp