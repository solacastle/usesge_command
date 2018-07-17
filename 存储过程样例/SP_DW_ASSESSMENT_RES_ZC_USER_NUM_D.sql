CREATE OR REPLACE PROCEDURE dw.SP_DW_ASSESSMENT_RES_ZC_USER_NUM_D(
	  in v_day_key bigint
)
on exception resume
begin
    declare v_sql_text varchar(32000);
    declare v_month_key bigint;
	declare var_month_key1 varchar(50);
	declare v_double_day varchar(50);
	declare v_month varchar(50);
	declare v_month_int bigint;
	declare v_day varchar(50);
	declare var_month_key2 varchar(50);
	declare v_jd_day varchar(50);
	declare v_start_time varchar(50);
	declare v_day_key2 bigint;
	declare v_cz_month_key bigint;
	
	
	set v_month = substr(cast(v_day_key as varchar),5,2);
	set v_month_int = cast(v_month as bigint);
	set v_day = substr(cast(v_day_key as varchar),7,2);
	set v_month_key = cast(substr(cast(v_day_key as varchar),1,6) as int);
    set var_month_key1 = case when v_month_int % 2=1 then '01' else '02' end; 
    set v_double_day = var_month_key1||v_day;
	set var_month_key2 = case when v_month_int % 3=1 then '01' when v_month_int % 3=2 then '02' else '03' end;
	set v_jd_day = var_month_key2||v_day;
	set v_start_time = substr(cast(v_day_key as varchar),1,4)||'-'||v_month||'-'||v_day||' 00:00:00';
	set v_day_key2 = cast(dateformat(DATEADD(dd,-1,v_start_time),'yyyymmdd')as bigint);
	set v_cz_month_key = cast(dateformat(DATEADD(mm,-1,v_start_time),'yyyymm')as bigint);
    
	print v_jd_day;
	print v_day_key2;
	print v_cz_month_key;
	
   set v_sql_text ='

delete from DW_ASSESSMENT_CELL_ZC_USER_HTTP_D_'||v_month||' where DAY_KEY='||v_day_key||'; --小区用户质差指标表+质差标签   -http   --天  


insert into DW_ASSESSMENT_CELL_ZC_USER_HTTP_D_'||v_month||'
select
    a.DAY_KEY
	,c.CITY_NAME
	,c.RESIDENT_NAME
	,c.CELL_NAME
	,c.CELL_ECI
	,a.MSISDN
	,case when sum(a.HTTP_P5_SESSION_LATENCYD_SUM)= 0 then 0 else sum(a.HTTP_P5_DOWN_FLOW_SUM)*8000.0/1024/sum(a.HTTP_P5_SESSION_LATENCYD_SUM) end as HTTP_RATE_500K
	,sum(a.HTTP_P5_SESSION_RESPONSE_SUCC_CNT) as HTTP_SESS_SUCC_500K
	,case when (HTTP_RATE_500K<1536 and HTTP_SESS_SUCC_500K>10) then 1 else 0 end as IS_ZC_HTTP
from 
    B1D_HTTP_USER_CELL_'||v_jd_day||' a    --修改分表  --季度1-3+按天
    join DW_ASSESSMENT_CELL_USER_R_LIST_M c
	on a.CELL_ECI=c.CELL_ECI and c.MSISDN=a.MSISDN  and c.month_key='||v_cz_month_key||'
where a.DAY_KEY='||v_day_key||'
group by a.DAY_KEY,c.CITY_NAME,c.RESIDENT_NAME,c.CELL_NAME,c.CELL_ECI,a.MSISDN;


delete from DW_ASSESSMENT_CELL_ZC_USER_S1U_D_'||v_month||' where DAY_KEY='||v_day_key||'; --小区用户质差指标表+质差标签  -s1u  --天


insert into DW_ASSESSMENT_CELL_ZC_USER_S1U_D_'||v_month||'
select
    b.DAY_KEY
	,c.CITY_NAME
	,c.RESIDENT_NAME
	,c.CELL_NAME
	,c.CELL_ECI
	,b.MSISDN
	,case when sum(b.TCP_PACKETU_SUM+TCP_PACKETD_SUM)=0 then 0 else sum(b.TCP_RESEND_PACKETU_SUM+b.TCP_RESEND_PACKETD_SUM)*100.0/sum(b.TCP_PACKETU_SUM+b.TCP_PACKETD_SUM) end as TCP_RETRANS_RATE
	,sum(b.TCP_REQ_CNT) as TCPSYN
	,case when sum(b.TCP_BUILD_ACK_LANTENCY_CNT)=0 then 0 else sum(b.TCP_BUILD_ACK_LANTENCY_SUM)*1.0/sum(b.TCP_BUILD_ACK_LANTENCY_CNT) end as TCP_23SH_LATENCY
	,sum(b.UP_FLOW_SUM+b.DOWN_FLOW_SUM) as FLOW_SUM
	,case when
     (TCP_RETRANS_RATE>3 and TCPSYN>100 and FLOW_SUM>5242880)
     or (TCP_23SH_LATENCY>300 and TCPSYN>30 and FLOW_SUM>5242880) then 1 else 0 end as IS_ZC_S1U
from
    B1D_S1U_USER_CELL_'||v_day||' b   --修改分表  -按天
    join DW_ASSESSMENT_CELL_USER_R_LIST_M c
	on b.CELL_ECI=c.CELL_ECI and c.MSISDN=b.MSISDN  and c.month_key='||v_cz_month_key||'
where b.DAY_KEY='||v_day_key||'
group by b.DAY_KEY,c.CITY_NAME,c.RESIDENT_NAME,c.CELL_NAME,c.CELL_ECI,b.MSISDN;


DELETE FROM DW_ASSESSMENT_CELL_ZC_USER_D_'||v_month||' WHERE DAY_KEY='||v_day_key||';           --小区用户质差指标表+质差标签  -s1u+http  --天


insert into DW_ASSESSMENT_CELL_ZC_USER_D_'||v_month||'
select
    a.DAY_KEY
    ,a.CITY_NAME
    ,a.RESIDENT_NAME
    ,a.CELL_NAME
    ,a.CELL_ECI
    ,a.MSISDN
    ,a.HTTP_RATE_500K
    ,a.HTTP_SESS_SUCC_500K
    ,b.TCP_RETRANS_RATE
    ,b.TCPSYN
    ,b.TCP_23SH_LATENCY
	,b.FLOW_SUM
    ,case when a.IS_ZC_HTTP=1 or b.IS_ZC_S1U=1 then 1 else 0 end as IS_ZC
from 
    DW_ASSESSMENT_CELL_ZC_USER_HTTP_D_'||v_month||' a
    join
	DW_ASSESSMENT_CELL_ZC_USER_S1U_D_'||v_month||' b
	on a.CITY_NAME=b.CITY_NAME and a.RESIDENT_NAME= b.RESIDENT_NAME and a.CELL_NAME=b.CELL_NAME and a.CELL_ECI=b.CELL_ECI and a.MSISDN=b.MSISDN
where a.day_key='||v_day_key||' and b.day_key='||v_day_key||';


DELETE FROM DW_ASSESSMENT_CELL_ZC_USER_NUM_D_'||v_month||' WHERE DAY_KEY='||v_day_key||';         --小区质差用户数   --天


insert into DW_ASSESSMENT_CELL_ZC_USER_NUM_D_'||v_month||'
select 
    a.DAY_KEY
	,a.CITY_NAME
	,a.RESIDENT_NAME
	,a.CELL_NAME
	,a.CELL_ECI
	,count(distinct a.MSISDN) as USER_CNT
from
    DW_ASSESSMENT_CELL_ZC_USER_D_'||v_month||' a
where a.DAY_KEY='||v_day_key||' and a.IS_ZC=1
group by a.DAY_KEY,a.CITY_NAME,a.RESIDENT_NAME,a.CELL_NAME,a.CELL_ECI;


DELETE FROM DW_ASSESSMENT_CELL_XL_USER_NUM_D_'||v_month||' WHERE DAY_KEY='||v_day_key||';         --小区信令用户数   --天


insert into DW_ASSESSMENT_CELL_XL_USER_NUM_D_'||v_month||'                --DM_RE_CITY_CELL_USER_NUM_XL_ALL_CI  
select 
    a.DAY_KEY
	,a.CITY_NAME
	,a.RESIDENT_NAME
	,a.CELL_NAME
	,a.CELL_ECI
	,count(distinct a.MSISDN) as USER_CNT
from
    DW_ASSESSMENT_CELL_ZC_USER_D_'||v_month||' a
where a.DAY_KEY='||v_day_key||'
group by a.DAY_KEY,a.CITY_NAME,a.RESIDENT_NAME,a.CELL_NAME,a.CELL_ECI;


delete from DW_ASSESSMENT_RES_ZC_USER_HTTP_D_'||v_month||' where DAY_KEY='||v_day_key||';       --居民区用户质差指标表+质差标签   -http   --天


insert into DW_ASSESSMENT_RES_ZC_USER_HTTP_D_'||v_month||'
select
    a.DAY_KEY
	,c.CITY_NAME
	,c.RESIDENT_NAME
	,a.MSISDN
	,case when sum(a.HTTP_P5_SESSION_LATENCYD_SUM)= 0 then 0 else sum(a.HTTP_P5_DOWN_FLOW_SUM)*8000.0/1024/sum(a.HTTP_P5_SESSION_LATENCYD_SUM) end as HTTP_RATE_500K
	,sum(a.HTTP_P5_SESSION_RESPONSE_SUCC_CNT) as HTTP_SESS_SUCC_500K
	,case when (HTTP_RATE_500K<1536 and HTTP_SESS_SUCC_500K>10) then 1 else 0 end as IS_ZC_HTTP
from 
    B1D_HTTP_USER_CELL_'||v_jd_day||' a    --修改分表  --季度1-3  --按天
    join DW_ASSESSMENT_CELL_USER_R_LIST_M c
	on a.CELL_ECI=c.CELL_ECI and a.MSISDN=c.MSISDN  and c.month_key='||v_cz_month_key||'
where a.DAY_KEY='||v_day_key||'
group by a.DAY_KEY,c.CITY_NAME,c.RESIDENT_NAME,a.MSISDN;


delete from DW_ASSESSMENT_RES_ZC_USER_S1U_D_'||v_month||' where DAY_KEY='||v_day_key||';            --居民区用户质差指标表+质差标签  -s1u  --天


insert into DW_ASSESSMENT_RES_ZC_USER_S1U_D_'||v_month||'
select
    b.DAY_KEY
	,c.CITY_NAME
	,c.RESIDENT_NAME
	,b.MSISDN
	,case when sum(b.TCP_PACKETU_SUM+TCP_PACKETD_SUM)=0 then 0 else sum(b.TCP_RESEND_PACKETU_SUM+b.TCP_RESEND_PACKETD_SUM)*100.0/sum(b.TCP_PACKETU_SUM+b.TCP_PACKETD_SUM) end as TCP_RETRANS_RATE
	,sum(b.TCP_REQ_CNT) as TCPSYN
	,case when sum(b.TCP_BUILD_ACK_LANTENCY_CNT)=0 then 0 else sum(b.TCP_BUILD_ACK_LANTENCY_SUM)*1.0/sum(b.TCP_BUILD_ACK_LANTENCY_CNT) end as TCP_23SH_LATENCY
	,sum(b.UP_FLOW_SUM+b.DOWN_FLOW_SUM) as FLOW_SUM
	,case when
     (TCP_RETRANS_RATE>3 and TCPSYN>100 and FLOW_SUM>5242880)
     or (TCP_23SH_LATENCY>300 and TCPSYN>100 and FLOW_SUM>5242880) then 1 else 0 end as IS_ZC_S1U
from
    B1D_S1U_USER_CELL_'||v_day||' b   --修改分表  -按天
    join DW_ASSESSMENT_CELL_USER_R_LIST_M c
	on b.CELL_ECI=c.CELL_ECI and b.MSISDN=c.MSISDN  and c.month_key='||v_cz_month_key||'
where b.DAY_KEY='||v_day_key||'
group by b.DAY_KEY,c.CITY_NAME,c.RESIDENT_NAME,b.MSISDN;
	

DELETE FROM DW_ASSESSMENT_RES_ZC_USER_D_'||v_month||' WHERE DAY_KEY='||v_day_key||';           --居民区用户质差指标表+质差标签  -s1u+http  --天


insert into DW_ASSESSMENT_RES_ZC_USER_D_'||v_month||'
select
    a.DAY_KEY
    ,a.CITY_NAME
    ,a.RESIDENT_NAME
    ,a.MSISDN
    ,a.HTTP_RATE_500K
    ,a.HTTP_SESS_SUCC_500K
    ,b.TCP_RETRANS_RATE
    ,b.TCPSYN
    ,b.TCP_23SH_LATENCY
	,b.FLOW_SUM
    ,case when a.IS_ZC_HTTP=1 or b.IS_ZC_S1U=1 then 1 else 0 end as IS_ZC
from 
    DW_ASSESSMENT_RES_ZC_USER_HTTP_D_'||v_month||' a
    join
	DW_ASSESSMENT_RES_ZC_USER_S1U_D_'||v_month||' b
	on a.CITY_NAME=b.CITY_NAME and a.RESIDENT_NAME=b.RESIDENT_NAME and a.MSISDN=b.MSISDN
where a.day_key='||v_day_key||' and b.day_key='||v_day_key||';


DELETE FROM DW_ASSESSMENT_RES_ZC_USER_NUM_D_'||v_month||' WHERE DAY_KEY='||v_day_key||';     --居民区质差用户数   --天

insert into DW_ASSESSMENT_RES_ZC_USER_NUM_D_'||v_month||'
select 
    a.DAY_KEY
	,a.CITY_NAME
	,a.RESIDENT_NAME
	,count(distinct a.MSISDN) as USER_CNT
from
    DW_ASSESSMENT_RES_ZC_USER_D_'||v_month||' a
where a.DAY_KEY='||v_day_key||' and a.IS_ZC=1
group by a.DAY_KEY,a.CITY_NAME,a.RESIDENT_NAME;


DELETE FROM DW_ASSESSMENT_RES_XL_USER_NUM_D_'||v_month||' WHERE DAY_KEY='||v_day_key||';       --居民区信令用户数   --天


insert into DW_ASSESSMENT_RES_XL_USER_NUM_D_'||v_month||'
select 
    a.DAY_KEY
	,a.CITY_NAME
	,a.RESIDENT_NAME
	,count(distinct a.MSISDN) as USER_CNT
from
    DW_ASSESSMENT_RES_ZC_USER_D_'||v_month||' a
where a.DAY_KEY='||v_day_key||'
group by a.DAY_KEY,a.CITY_NAME,a.RESIDENT_NAME;
';
	print v_sql_text;
	execute immediate with result set on v_sql_text;                                                                        
	commit;      
end
GO
