CREATE OR REPLACE PROCEDURE dw.SP_DW_VOLTE_QUALITY_OMC_NE_D(
	  in v_day_key bigint
)
on exception resume
begin
    declare v_sql_text varchar(32000);
    declare v_month_key bigint;
	declare var_month_key1 varchar(50);
	declare v_double_day varchar(50);
	declare v_month varchar(50);
	declare v_day varchar(50);
	
	set v_month = substr(cast(v_day_key as varchar),5,2);
	set v_day = substr(cast(v_day_key as varchar),7,2);
	set v_month_key = cast(substr(cast(v_day_key as varchar),1,6) as int);
    set var_month_key1 = case when v_month_key % 2=1 then '01' else '02' end; 
    set v_double_day = var_month_key1||v_day;
		
    set v_sql_text = 'delete from dw.DW_VOLTE_QUALITY_OMC_NE_D where DAY_KEY='||v_day_key||'';

    print v_sql_text;
	execute immediate with result set on v_sql_text;
	commit;
	
   set v_sql_text ='
insert into DW_VOLTE_QUALITY_OMC_NE_D
(
DAY_KEY
,NE_NAME
,S_CSCF_SUCC_RATE
,S_CSCF_SEQ_CNT
,S_CSCF_SUCC_CNT
,S_SBC_SUCC_RATE
,S_SBC_SEQ_CNT
,S_SBC_SUCC_CNT
,ESRVCC_SUCC_RATE
,ESRVCC_SEQ_CNT
,ESRVCC_SUCC_CNT
,ATTACH_CNT
,BEAR_CREATE_REQ_CNT
,S1U_FLOW
,UPDATE_LOCATION_REQ_CNT
,PAGING_REQ_CNT
)
select
    '||v_day_key||' as DAY_KEY
    ,a.USERLABEL as NE_NAME
    ,case when S_CSCF_SEQ_CNT=0 then null else S_CSCF_SUCC_CNT*100.0/S_CSCF_SEQ_CNT end as S_CSCF_SUCC_RATE
    ,sum(a.ur_attinitreglte_fromvolte) as S_CSCF_SEQ_CNT
    ,sum(a.ur_succinitreglte_fromvolte) as S_CSCF_SUCC_CNT
	,null as S_SBC_SUCC_RATE
    ,null as S_SBC_SEQ_CNT
    ,null as S_SBC_SUCC_CNT
    ,null as ESRVCC_SUCC_RATE
    ,null as ESRVCC_SEQ_CNT
    ,null as ESRVCC_SUCC_CNT
    ,null as ATTACH_CNT
    ,null as BEAR_CREATE_REQ_CNT
    ,null as S1U_FLOW
    ,null as UPDATE_LOCATION_REQ_CNT
    ,null as PAGING_REQ_CNT
from 
    (select * from P_VOLTE_IMS_CSCF_D where COMPRESS_DATE='''||v_day_key||''') a
group by NE_NAME

union all

select
    '||v_day_key||' as DAY_KEY
    ,b.USERLABEL as NE_NAME
    ,null as S_CSCF_SUCC_RATE
    ,null as S_CSCF_SEQ_CNT
    ,null as S_CSCF_SUCC_CNT
	,null as S_SBC_SUCC_RATE
    ,null as S_SBC_SEQ_CNT
    ,null as S_SBC_SUCC_CNT
    ,case when ESRVCC_SEQ_CNT=0 then null else ESRVCC_SUCC_CNT*100.0/ESRVCC_SEQ_CNT end as ESRVCC_SUCC_RATE
    ,sum(b.SCC_ESRVCCTIMES) as ESRVCC_SEQ_CNT
    ,sum(b.SCC_ESRVCCSUCCTIMES) as ESRVCC_SUCC_CNT
    ,null as ATTACH_CNT
    ,null as BEAR_CREATE_REQ_CNT
    ,null as S1U_FLOW
    ,null as UPDATE_LOCATION_REQ_CNT
    ,null as PAGING_REQ_CNT
from 
    (select * from P_VOLTE_IMS_TAS_D where COMPRESS_DATE='''||v_day_key||''') b	
group by NE_NAME

union all

select
    '||v_day_key||' as DAY_KEY
    ,a.USERLABEL as NE_NAME
    ,null as S_CSCF_SUCC_RATE
    ,null as S_CSCF_SEQ_CNT
    ,null as S_CSCF_SUCC_CNT
	,case when S_SBC_SEQ_CNT=0 then null else S_SBC_SUCC_CNT*100.0/S_SBC_SEQ_CNT end as S_SBC_SUCC_RATE
    ,sum(a.UR_ATTINITREG) as S_SBC_SEQ_CNT
    ,sum(a.UR_SUCCINITREG) as S_SBC_SUCC_CNT	
    ,null as ESRVCC_SUCC_RATE
    ,null as ESRVCC_SEQ_CNT
    ,null as ESRVCC_SUCC_CNT
    ,null as ATTACH_CNT
    ,null as BEAR_CREATE_REQ_CNT
    ,null as S1U_FLOW
    ,null as UPDATE_LOCATION_REQ_CNT
    ,null as PAGING_REQ_CNT
from 
    (select * from P_VOLTE_IMS_SBC_D where COMPRESS_DATE='''||v_day_key||''') a	
group by NE_NAME

union all

select
    a.DAY_KEY
	,b.NE_NAME as NE_NAME
	,null as S_CSCF_SUCC_RATE
    ,null as S_CSCF_SEQ_CNT
    ,null as S_CSCF_SUCC_CNT
	,null as S_SBC_SUCC_RATE
    ,null as S_SBC_SEQ_CNT
    ,null as S_SBC_SUCC_CNT
    ,null as ESRVCC_SUCC_RATE
    ,null as ESRVCC_SEQ_CNT
    ,null as ESRVCC_SUCC_CNT
    ,sum(a.ATTACH_CNT           ) as ATTACH_CNT
    ,sum(a.BEAR_CREATE_REQ_CNT  ) as BEAR_CREATE_REQ_CNT
	,null as S1U_FLOW
    ,null as UPDATE_LOCATION_REQ_CNT	
    ,sum(a.PAGING_REQ_CNT) as PAGING_REQ_CNT
from 
    B1D_S1MME_MMEIP_'||v_month||' a
	join 
	dw_dm_ne_ip b
	on a.MMEIP=b.IP_INT
where a.day_key='||v_day_key||'
group by a.DAY_KEY,NE_NAME

union all

select 
    a.DAY_KEY
	,cast(a.MMEIP as varchar) as NE_NAME
	,null as S_CSCF_SUCC_RATE
    ,null as S_CSCF_SEQ_CNT
    ,null as S_CSCF_SUCC_CNT
	,null as S_SBC_SUCC_RATE
    ,null as S_SBC_SEQ_CNT
    ,null as S_SBC_SUCC_CNT
    ,null as ESRVCC_SUCC_RATE
    ,null as ESRVCC_SEQ_CNT
    ,null as ESRVCC_SUCC_CNT
    ,null as ATTACH_CNT
    ,null as BEAR_CREATE_REQ_CNT
    ,null as S1U_FLOW
    ,sum(a.UPDATE_LOCATION_REQ_CNT) as UPDATE_LOCATION_REQ_CNT
	,null as PAGING_REQ_CNT
from 
    B1D_S6A_MMEIP_'||v_month||' a
where a.day_key='||v_day_key||'
group by a.DAY_KEY,NE_NAME

union all

select
    a.DAY_KEY
	,b.NE_NAME as NE_NAME	
	,null as S_CSCF_SUCC_RATE
    ,null as S_CSCF_SEQ_CNT
    ,null as S_CSCF_SUCC_CNT
	,null as S_SBC_SUCC_RATE
    ,null as S_SBC_SEQ_CNT
    ,null as S_SBC_SUCC_CNT
    ,null as ESRVCC_SUCC_RATE
    ,null as ESRVCC_SEQ_CNT
    ,null as ESRVCC_SUCC_CNT
    ,null as ATTACH_CNT
    ,null as BEAR_CREATE_REQ_CNT
    ,sum(a.UP_FLOW_SUM+a.DOWN_FLOW_SUM) as S1U_FLOW
	,null as UPDATE_LOCATION_REQ_CNT
    ,null as PAGING_REQ_CNT
from 
    B1D_ALL_SGWIP_'||v_month||' a
	join 
	dw_dm_ne_ip b
	on a.SGWIP=b.IP_INT
where a.day_key='||v_day_key||'
group by a.DAY_KEY,NE_NAME
   
';
	print v_sql_text;
	execute immediate with result set on v_sql_text;                                                                        
	commit;      
end
GO
