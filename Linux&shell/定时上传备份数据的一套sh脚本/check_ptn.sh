count=`ps -ef|grep "check_ptn.sh" |grep -v grep|wc -l`
echo `date`
/dataload/groupftp/run_end_ptn.sh /ptn /ftp 1
/dataload/groupftp/run_end_ptn.sh /ptn /ftp 2
/dataload/groupftp/run_end_ptn.sh /ptn /ftp 3