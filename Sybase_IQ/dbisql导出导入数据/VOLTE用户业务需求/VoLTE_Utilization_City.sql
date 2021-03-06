SET TEMPORARY OPTION temp_extract_name1='/srcdata/VoLTE_Utilization_City_20161130_tmp.txt';
SET TEMPORARY OPTION Temp_Extract_Append = 'OFF';
SET TEMPORARY OPTION Temp_Extract_Binary ='OFF';
set temporary option temp_extract_null_as_empty = 'ON';
SET TEMPORARY OPTION temp_extract_swap ='OFF';
set temporary option temp_extract_column_delimiter = '0x0A';
select 
'江苏'||','||
city_zhname||','||
'20161130'||','||
count(1)||','||
sum(a.res_user_cnt)||','||
cast((sum(a.res_user_cnt)*1.0/count(1)*100) as numeric(20,2))||','||
sum(tac_no_surport_user_cnt)||','||
sum(a.version_low_user_cnt)||','||
sum(a.tac_no_open_user_cnt)||','||
sum(a.tac_no_pdn_user_cnt)||','||
sum(a.tac_res_fail_user_cnt)||','||
sum(a.tac_update_fail_user_cnt)||','||
sum(case when a.res_user_cnt=0 
and a.tac_no_surport_user_cnt=0
and a.version_low_user_cnt=0 
and a.tac_no_open_user_cnt =0 
and a.tac_no_pdn_user_cnt =0 
and a.tac_res_fail_user_cnt =0 
and a.tac_update_fail_user_cnt=0
then 1 else 0 end)||','||
cast((sum(tac_no_surport_user_cnt)*1.0/count(1)*100) as numeric(20,2))||','||
cast((sum(a.version_low_user_cnt)*1.0/count(1)*100) as numeric(20,2))||','||
cast((sum(a.tac_no_open_user_cnt)*1.0/count(1)*100) as numeric(20,2))||','||
cast((sum(a.tac_no_pdn_user_cnt)*1.0/count(1)*100) as numeric(20,2))||','||
cast((sum(a.tac_res_fail_user_cnt)*1.0/count(1)*100) as numeric(20,2))||','||
cast((sum(a.tac_update_fail_user_cnt)*1.0/count(1)*100) as numeric(20,2))||','||
cast((sum(case when a.res_user_cnt=0 
and a.tac_no_surport_user_cnt=0
and a.version_low_user_cnt=0 
and a.tac_no_open_user_cnt =0 
and a.tac_no_pdn_user_cnt =0 
and a.tac_res_fail_user_cnt =0 
and a.tac_update_fail_user_cnt=0
then 1 else 0 end)*1.0/count(1)*100) as numeric(20,2))
from  
(
select  distinct c.city_zhname,b.TERMINAL_BRAND,
c.msisdn  msisdn,
case when d.msisdn is not null then 1 else 0 end as res_user_cnt,
case when f.is_vl_tm=0  then 1 else 0 end  as tac_no_surport_user_cnt,
case when f.is_vl_tm=1 and f.SMART_SYS='苹果' and f.TM_VERSION='其他'  then 1 else 0 end  as version_low_user_cnt,
case when f.is_vl_tm=1 and (f.SWITH_STATE='关' and f.SMART_SYS='苹果' and f.TM_VERSION in ( '9.3','9.2','9.2.1(13D15)','10')) or (f.SWITH_STATE='关' and f.SMART_SYS='安卓')  then 1 else 0 end as tac_no_open_user_cnt,
case when f.is_vl_tm=1 and (f.SMART_SYS='苹果' and f.TM_VERSION in ( '9.3','9.2','9.2.1(13D15)','10') or f.SMART_SYS='安卓') and g.is_pdn=0  then 1 else 0 end as tac_no_pdn_user_cnt,
case when f.is_vl_tm=1 and (f.SMART_SYS='苹果' and f.TM_VERSION in ( '9.3','9.2','9.2.1(13D15)','10') or f.SMART_SYS='安卓') and e.msisdn is not null then 1 else 0 end as tac_res_fail_user_cnt,
case when f.is_vl_tm=1 and (f.SMART_SYS='苹果' and f.TM_VERSION in ( '9.3','9.2','9.2.1(13D15)','10') or f.SMART_SYS='安卓') and g.is_update_fail=1  then 1 else 0 end as tac_update_fail_user_cnt
from 
swxt.t_volte_signed_user_list c inner join 
(select b.msisdn,c.CITY_ZHNAME,a.TERMINAL_BRAND,a.TYPE_NAME from   DW_DM_CO_CITY c ,swxt.dw_dm_user_prop b 
        left outer join dw_dm_volte_tac a 
        on a.IMEI_CHAR=substr(b.IMEI,1,8) where  substr(cast(b.city_key as varchar),5,3)=c.city_area_char
     and b.month_key=201611) b on b.MSISDN=c.msisdn
left outer join dw_dm_upgp_volte_user_res_succ d on d.msisdn=c.msisdn and d.month_key=201611
left outer join dw_dm_upgp_volte_user_res_fail e on e.msisdn=c.msisdn and e.month_key=201611
inner join (select distinct msisdn,max(is_vl_tm) as is_vl_tm, max(SMART_SYS) as SMART_SYS,max(TM_VERSION) as TM_VERSION,max(SWITH_STATE) as SWITH_STATE 
from DM_VL_USER_CELL_D_V4 f where f.day_key=20161220 and is_vl_open=1 group by msisdn) f on f.msisdn=c.msisdn 
left outer join (select distinct msisdn,max(is_update_fail) is_update_fail,max(STATUS_OPEN) as STATUS_OPEN,max(is_pdn) as is_pdn from V_DM_VL_USER_OPEN_D_12 g where g.day_key=20161220 group by msisdn) g on g.msisdn=c.msisdn 
where c.MONTH_KEY=201611
) a group by city_zhname 