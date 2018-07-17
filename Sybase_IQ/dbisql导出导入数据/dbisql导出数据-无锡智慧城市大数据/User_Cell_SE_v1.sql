SET TEMPORARY OPTION temp_extract_name1='/dataload/User_Cell_SE_2016122310.txt';
SET TEMPORARY OPTION Temp_Extract_Append = 'OFF';
SET TEMPORARY OPTION Temp_Extract_Binary ='OFF';
set temporary option temp_extract_null_as_empty = 'ON';
SET TEMPORARY OPTION temp_extract_swap ='OFF';
set temporary option temp_extract_column_delimiter = '	';
select start_time,b.msisdnkey,c.cikey,DNS_QUERY_DELAY_SUM,DNS_QUERY_DELAY_CNT,DNS_QUERY_DELAY,
TCP_12SH_LATENCY_SUM,TCP_12SH_LATENCY_CNT,TCP_12SH_LATENCY,TCP_23SH_LATENCY_SUM,
TCP_23SH_LATENCY_CNT,TCP_23SH_LATENCY,TCPSYN_12,TCPSYNACK_12,
TCP_12SH_SUCC_RATE,TCPSYNACK_23,TCPACK_23,TCH_23SH_SUCC_RATE,
SESS_RES_LATENCY_SUM,SESS_RES_LATENCY_CNT,SESS_RES_LATENCY,SESS_LATENCY_SUM_2K,
SESS_LATENCY_CNT_2K,sess_latency_2k,DL_TRAFFIC_50,DL_TRAFFIC_50_DELAY,dl_rate_50
from O_VIP_USER_cell_HZ_Q_wx_23 a,msisdn_key b,ci_key c
where a.msisdn=b.msisdn
and a.cell_eci=c.ci
and start_time>='2016-12-23 10:00:00' and start_time<'2016-12-23 11:00:00'