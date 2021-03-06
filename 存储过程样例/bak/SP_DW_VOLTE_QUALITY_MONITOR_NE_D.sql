CREATE OR REPLACE PROCEDURE dw.SP_DW_VOLTE_QUALITY_MONITOR_NE_D(
	  in v_day_key bigint
)
on exception resume
begin
    declare v_sql_text varchar(32000);
	
    set v_sql_text = 'delete from dw.DW_VOLTE_QUALITY_MONITOR_NE_D where DAY_KEY='||v_day_key||'';

    print v_sql_text;
	execute immediate with result set on v_sql_text;
	commit;
	
   set v_sql_text ='
insert into DW_VOLTE_QUALITY_MONITOR_NE_D
(
DAY_KEY

,NE_NAME
,SEQ_NAME
,OMC_NAME
,SEQ_VALUE
,OMC_VALUE
,DIFF_RATE
,IS_WARN
)
select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''S-CSCF初始注册成功率'' as SEQ_NAME
    ,''S-CSCF初始注册成功率'' as OMC_NAME
    ,b.S_CSCF_SUCC_RATE as SEQ_VALUE
    ,a.S_CSCF_SUCC_RATE as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and S_CSCF_SUCC_RATE is not null) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and S_CSCF_SUCC_RATE is not null) b
	on  a.NE_NAME=b.NE_NAME
	
union all

select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''S-CSCF初始注册请求次数'' as SEQ_NAME
    ,''S-CSCF初始注册请求次数'' as OMC_NAME
    ,b.S_CSCF_SEQ_CNT as SEQ_VALUE
    ,a.S_CSCF_SEQ_CNT as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and S_CSCF_SEQ_CNT is not null ) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and S_CSCF_SEQ_CNT is not null) b
	on  a.NE_NAME=b.NE_NAME
	
union all

select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''S-CSCF初始注册成功次数'' as SEQ_NAME
    ,''S-CSCF初始注册成功次数'' as OMC_NAME
    ,b.S_CSCF_SUCC_CNT as SEQ_VALUE
    ,a.S_CSCF_SUCC_CNT as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and S_CSCF_SUCC_CNT is not null  ) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and S_CSCF_SUCC_CNT is not null  ) b
	on  a.NE_NAME=b.NE_NAME
	
union all

select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''S-CSCF初始注册成功率'' as SEQ_NAME
    ,''S-CSCF初始注册成功率'' as OMC_NAME
    ,b.S_SBC_SUCC_RATE as SEQ_VALUE
    ,a.S_SBC_SUCC_RATE as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and S_SBC_SUCC_RATE is not null) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and S_SBC_SUCC_RATE is not null) b
	on  a.NE_NAME=b.NE_NAME
	
union all

select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''S-CSCF初始注册请求次数'' as SEQ_NAME
    ,''S-CSCF初始注册请求次数'' as OMC_NAME
    ,b.S_SBC_SEQ_CNT as SEQ_VALUE
    ,a.S_SBC_SEQ_CNT as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and S_SBC_SEQ_CNT is not null ) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and S_SBC_SEQ_CNT is not null) b
	on  a.NE_NAME=b.NE_NAME
	
union all

select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''S-CSCF初始注册成功次数'' as SEQ_NAME
    ,''S-CSCF初始注册成功次数'' as OMC_NAME
    ,b.S_SBC_SUCC_CNT as SEQ_VALUE
    ,a.S_SBC_SUCC_CNT as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and S_SBC_SUCC_CNT is not null  ) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and S_SBC_SUCC_CNT is not null  ) b
	on  a.NE_NAME=b.NE_NAME
	
union all

select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''Sv_SRVCC切换成功率'' as SEQ_NAME
    ,''Sv_SRVCC切换成功率'' as OMC_NAME
    ,b.ESRVCC_SUCC_RATE as SEQ_VALUE
    ,a.ESRVCC_SUCC_RATE as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and ESRVCC_SUCC_RATE is not null ) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and ESRVCC_SUCC_RATE is not null ) b
	on  a.NE_NAME=b.NE_NAME
	
union all

select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''Sv_SRVCC切换请求次数'' as SEQ_NAME
    ,''Sv_SRVCC切换请求次数'' as OMC_NAME
    ,b.ESRVCC_SEQ_CNT as SEQ_VALUE
    ,a.ESRVCC_SEQ_CNT as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and ESRVCC_SEQ_CNT is not null ) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and ESRVCC_SEQ_CNT is not null ) b
	on  a.NE_NAME=b.NE_NAME
	
union all

select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''Sv_SRVCC切换成功次数'' as SEQ_NAME
    ,''Sv_SRVCC切换成功次数'' as OMC_NAME
    ,b.ESRVCC_SUCC_CNT as SEQ_VALUE
    ,a.ESRVCC_SUCC_CNT as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and ESRVCC_SUCC_CNT is not null ) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and ESRVCC_SUCC_CNT is not null ) b
	on  a.NE_NAME=b.NE_NAME
	
union all

select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''附着请求次数'' as SEQ_NAME
    ,''附着请求次数'' as OMC_NAME
    ,b.ATTACH_CNT as SEQ_VALUE
    ,a.ATTACH_CNT as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and ATTACH_CNT is not null  ) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and ATTACH_CNT is not null ) b
	on a.CITY_NAME=b.CITY_NAME  and a.NE_NAME=b.NE_NAME
	
union all

select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''缺省承载建立请求次数'' as SEQ_NAME
    ,''缺省承载建立请求次数'' as OMC_NAME
    ,b.BEAR_CREATE_REQ_CNT as SEQ_VALUE
    ,a.BEAR_CREATE_REQ_CNT as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and BEAR_CREATE_REQ_CNT is not null  ) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and BEAR_CREATE_REQ_CNT is not null  ) b
	on  a.NE_NAME=b.NE_NAME
	
union all

select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''S1U口流量'' as SEQ_NAME
    ,''S1U口流量'' as OMC_NAME
    ,b.S1U_FLOW*1.0/1024/1024/1024 as SEQ_VALUE
    ,a.S1U_FLOW*1.0/1024/1024/1024 as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and S1U_FLOW is not null ) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and S1U_FLOW is not null ) b
	on  a.NE_NAME=b.NE_NAME
	
union all

select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''位置更新请求次数'' as SEQ_NAME
    ,''位置更新请求次数'' as OMC_NAME
    ,b.UPDATE_LOCATION_REQ_CNT as SEQ_VALUE
    ,a.UPDATE_LOCATION_REQ_CNT as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and UPDATE_LOCATION_REQ_CNT is not null ) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and UPDATE_LOCATION_REQ_CNT is not null ) b
	on  a.NE_NAME=b.NE_NAME
	
	
union all

select
    case when a.DAY_KEY is not null then a.DAY_KEY else b.DAY_KEY end as DAY_KEY
    
	,case when a.NE_NAME is not null then a.NE_NAME else b.NE_NAME end as NE_NAME
    ,''cs_Paging请求次数'' as SEQ_NAME
    ,''cs_Paging请求次数'' as OMC_NAME
    ,b.PAGING_REQ_CNT as SEQ_VALUE
    ,a.PAGING_REQ_CNT as OMC_VALUE
    ,case when OMC_VALUE=0 then null else SEQ_VALUE*100.0/OMC_VALUE end as DIFF_RATE
    ,case when DIFF_RATE<95 or DIFF_RATE>105 then 1 else 0 end as IS_WARN
from 
    (select * from DW_VOLTE_QUALITY_OMC_NE_D where day_key='||v_day_key||' and PAGING_REQ_CNT is not null ) a
    full join
    (select * from DW_VOLTE_QUALITY_SEQ_NE_D where day_key='||v_day_key||' and PAGING_REQ_CNT is not null ) b
	on  a.NE_NAME=b.NE_NAME
   
';
	print v_sql_text;
	execute immediate with result set on v_sql_text;                                                                        
	commit;      
end
GO
