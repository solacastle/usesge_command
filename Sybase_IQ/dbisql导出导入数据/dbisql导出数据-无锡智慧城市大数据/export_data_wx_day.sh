#!/bin/sh
. /sybiq/IQ.sh
. /sybiq/SYBASE.sh

IP=$2
echo "DATE:          $1"
echo "IP:            $IP"

#TIME1=$1" 00:00:00"
#echo "TIME1:         $TIME1"
sh /dataload/export_data_wx.sh "$1 00:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 01:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 02:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 03:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 04:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 05:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 06:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 07:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 08:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 09:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 10:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 11:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 12:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 13:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 14:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 15:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 16:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 18:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 19:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 20:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 21:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 22:00:00" "$IP"
sh /dataload/export_data_wx.sh "$1 23:00:00" "$IP"

