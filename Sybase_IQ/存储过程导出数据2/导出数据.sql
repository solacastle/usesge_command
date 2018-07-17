1\  147
dbisql -c "uid=swxt;pwd=Inspur;eng=DataCenter_S17;" -onerror exit -nogui /dataload/Inspur/apps/tools-etl/guoxiaotian/nwom_eutrancelltdd_cell_d.sql

set temporary option temp_extract_row_delimiter = '\x0a';
set temporary option temp_extract_column_delimiter = '+|+';
set temporary option temp_extract_null_as_empty = 'on';
set temporary option temp_extract_append = 'OFF';
set temporary option temp_extract_binary = 'OFF';
set temporary option temp_extract_swap = 'OFF';
set temporary option temp_extract_name1 = '/dataload/Inspur/apps/tools-etl/guoxiaotian/nwom_eutrancelltdd_cell_d.txt'; 

select * from swxt.nwom_eutrancelltdd_cell_d  where start_time>='20170101' and  start_time<='20170228'

set temporary option temp_extract_name1 = ''; 

2\
 sftp dataload@10.40.96.134
 
 inspur!!
 
 cd /srcdata/    
 put DW_DM_AREA_O_H.txt
 
 
 
 134
 3\ 
 
 
 chmod 777 /srcdata/DW_DM_AREA_O_H.txt
 
 
 4\134
  dbisql -c "dsn=dw@datacenter" -nogui 
  
  sp_import_jia 'DW_DM_AREA_O_H','/srcdata/DW_DM_AREA_O_H.txt'
  
  
  

