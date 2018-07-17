#!/bin/sh

cd /dataload/groupfile
sh diff_ftp_file_list.sh 1 HTTP_NRTM_RCST_JS "/share/group_file/nrtm_day_bak" "/TerminalAnalysis"
sh diff_ftp_file_list.sh 1 S1MME_NRTM_RCT_JS "/share/group_file/nrtm_day_bak" "/TerminalAnalysis"
sh diff_ftp_file_list.sh 1 LTE_NRTM_JS "/share/group_file/nrtm_day_bak" "/zywy/4g"

sh diff_ftp_file_list.sh 1 EUTRANCELL_JS "/share/group_file/nrtm_day_bak" "cell_dimension"

sh diff_ftp_file_list.sh 1 VoLTE_NRTM_emsc_JS "/share/group_file/volte" "/volte"
sh diff_ftp_file_list.sh 1 VoLTE_NRTM_sbc_JS "/share/group_file/volte" "/volte"
sh diff_ftp_file_list.sh 1 VoLTE_NRTM_city_JS "/share/group_file/volte" "/volte"
sh diff_ftp_file_list.sh 1 VoLTE_NRTM_terminal_JS "/share/group_file/volte" "/volte"
sh diff_ftp_file_list.sh 1 VoLTE_NRTM_cell_JS "/share/group_file/volte" "/volte"