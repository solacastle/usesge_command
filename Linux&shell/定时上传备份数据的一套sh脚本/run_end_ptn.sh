#!/bin/sh

file_date=`date --date="$3 hours ago" +%Y%m%d%H`
file_date1=`date --date="$3 hours ago" +%Y%m%d%H`

echo "$file_date1"

file=`cd $2; ls *"$file_date1"*.csv*`
for list in $file
 do
  echo list:$list;
  sh /dataload/groupftp/transfile_ftp.sh $1 $2 $list
  echo "cp $2/$list /share/group_file/ptn"
  cp $2/$list /share/group_file/ptn;
done