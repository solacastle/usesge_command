
CREATE OR REPLACE PROCEDURE dw.sp_export_user_cell_se( 
in arg_table_name varchar(50),
in arg_filename varchar(1000),
in arg_filter varchar(2000) ) 
on exception resume
begin
 declare var_sql_text varchar(32000);
  execute immediate 'SET TEMPORARY OPTION temp_extract_name1=''' || arg_filename || '''';
  execute immediate 'SET TEMPORARY OPTION Temp_Extract_Append = ''OFF''';
  execute immediate 'SET TEMPORARY OPTION Temp_Extract_Binary =''OFF''';
  execute immediate 'set temporary option temp_extract_null_as_empty = ''ON''';
  execute immediate 'SET TEMPORARY OPTION temp_extract_swap =''OFF''';
  execute immediate 'set temporary option temp_extract_column_delimiter = ''\x09''';
  execute immediate 'set temporary option temp_extract_row_delimiter = ''\x0a''';

--  set var_sql_text = 'select *  from  '||arg_table_name ||' where 1 =1 '||arg_filter;

  set var_sql_text = '
select start_time,b.msisdnkey,c.cikey,DNS_QUERY_DELAY_SUM,DNS_QUERY_DELAY_CNT,DNS_QUERY_DELAY,
TCP_12SH_LATENCY_SUM,TCP_12SH_LATENCY_CNT,TCP_12SH_LATENCY,TCP_23SH_LATENCY_SUM,
TCP_23SH_LATENCY_CNT,TCP_23SH_LATENCY,TCPSYN_12,TCPSYNACK_12,
TCP_12SH_SUCC_RATE,TCPSYNACK_23,TCPACK_23,TCH_23SH_SUCC_RATE,
SESS_RES_LATENCY_SUM,SESS_RES_LATENCY_CNT,SESS_RES_LATENCY,SESS_LATENCY_SUM_2K,
SESS_LATENCY_CNT_2K,sess_latency_2k,DL_TRAFFIC_50,DL_TRAFFIC_50_DELAY,dl_rate_50
from '||arg_table_name||' a,msisdn_key b,ci_key c
where a.msisdn=b.msisdn
and a.cell_eci=c.ci '||arg_filter;

  print var_sql_text;
  execute immediate with result set on var_sql_text;
--  set temporary option temp_extract_name1 = ''

end
GO
