#!/bin/sh 

DATETIME_KEY=`date --date="$1 days ago" +%Y%m%d`
file_name=$2"_"$DATETIME_KEY
 
cd $3
ls -1 *"$file_name"*> /dataload/groupfile/"$file_name"_local.txt
sort -n -k1 /dataload/groupfile/"$file_name"_local.txt>/dataload/groupfile/"$file_name"_local_sort.txt


sh /dataload/groupfile/ls_ftp_file_list.sh "$4" $file_name >/dataload/groupfile/"$file_name"_ftp.txt

cat /dataload/groupfile/"$file_name"_ftp.txt | awk '{print $9}' >/dataload/groupfile/"$file_name"_remo.txt
cat /dataload/groupfile/"$file_name"_remo.txt |sed -e '/^$/d' >/dataload/groupfile/"$file_name"_remote.txt
sort -n -k1 /dataload/groupfile/"$file_name"_remote.txt>/dataload/groupfile/"$file_name"_remote_sort.txt

diff -w /dataload/groupfile/"$file_name"_local_sort.txt /dataload/groupfile/"$file_name"_remote_sort.txt | grep \^\< >/dataload/groupfile/"$file_name"_result.txt

cat /dataload/groupfile/"$file_name"_result.txt | awk '{print $2}' >/dataload/groupfile/"$file_name"_put_list.txt



cd /dataload/groupfile/
file=`cat "$file_name"_put_list.txt`
for list in $file
 do
  echo list:$list;
  sh /dataload/groupfile/transfile_ftp.sh "$4" "$3" "$list" 
done
 
rm /dataload/groupfile/"$file_name"_ftp.txt
rm /dataload/groupfile/"$file_name"_remo.txt
rm /dataload/groupfile/"$file_name"_local.txt
rm /dataload/groupfile/"$file_name"_result.txt
rm /dataload/groupfile/"$file_name"_local_sort.txt
rm /dataload/groupfile/"$file_name"_remote_sort.txt