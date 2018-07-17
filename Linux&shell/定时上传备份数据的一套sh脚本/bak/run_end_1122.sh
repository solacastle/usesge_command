#!/bin/sh

file_date=`date --date="$3 hours ago" +%Y%m%d%H`
file_date1=`date --date="$3 hours ago" +%Y%m%d%H`

echo "$file_date"

file=`cd $2; ls *"$file_date1"*.csv*`
for list in $file
 do
  echo list:$list;
  sh /dataload/groupftp/transfile_ftp.sh $1 $2 $list
  #echo "mv $2/$list $2_bak/"
  #mv $2/$list $2_bak/;
done