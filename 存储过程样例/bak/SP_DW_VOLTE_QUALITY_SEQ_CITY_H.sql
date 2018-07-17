CREATE OR REPLACE PROCEDURE dw.SP_DW_VOLTE_QUALITY_SEQ_CITY_H(
	  in v_day_key bigint,
	  in v_hour_key bigint
)
on exception resume
begin
    declare v_sql_text varchar(32000);
	declare v_month_key bigint;
	declare var_month_key1 varchar(50);
	declare v_double_day varchar(50);
	declare v_month varchar(50);
	declare v_day varchar(50);
	declare v_start_time varchar(50);
	declare v_start_time_key bigint;
	declare v_end_time_key bigint;
	
	set v_month = substr(cast(v_day_key as varchar),5,2);
	set v_day = substr(cast(v_day_key as varchar),7,2);
	set v_month_key = cast(substr(cast(v_day_key as varchar),1,6) as int);
    set var_month_key1 = case when v_month_key % 2=1 then '01' else '02' end; 
    set v_double_day = var_month_key1||v_day;
	set v_start_time = substr(cast(v_day_key as varchar),1,4)||'-'||v_month||'-'||v_day||' '||cast(v_hour_key as varchar)||':00:00';
	set v_start_time_key = cast(dateformat(v_start_time,'yyyymmddhh0000')as bigint);
	set v_end_time_key = cast(dateformat(DATEADD(hh,+1,v_start_time),'yyyymmddhh0000')as bigint);
	
    set v_sql_text = 'delete from dw.DW_VOLTE_QUALITY_SEQ_CITY_H where DAY_KEY='||v_day_key||' and HOUR_KEY='||v_hour_key||'';

    print v_sql_text;
	execute immediate with result set on v_sql_text;
	commit;
	
   set v_sql_text ='
insert into DW_VOLTE_QUALITY_SEQ_CITY_H
(
DAY_KEY
,HOUR_KEY
,CITY_NAME
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
    t1.DAY_KEY
    ,t1.HOUR_KEY
    ,t1.CITY_NAME
    ,case when S_CSCF_SEQ_CNT=0 then null else S_CSCF_SUCC_CNT*100.0/S_CSCF_SEQ_CNT end as S_CSCF_SUCC_RATE
    ,sum(t1.S_CSCF_SEQ_CNT  ) as S_CSCF_SEQ_CNT
    ,sum(t1.S_CSCF_SUCC_CNT ) as S_CSCF_SUCC_CNT
    ,null as S_SBC_SUCC_RATE
    ,null as S_SBC_SEQ_CNT
    ,null as S_SBC_SUCC_CNT		
    ,case when ESRVCC_SEQ_CNT=0 then null else ESRVCC_SUCC_CNT*100.0/ESRVCC_SEQ_CNT end as ESRVCC_SUCC_RATE
    ,sum(t1.ESRVCC_SEQ_CNT    ) as ESRVCC_SEQ_CNT
    ,sum(t1.ESRVCC_SUCC_CNT   ) as ESRVCC_SUCC_CNT
    ,sum(t1.ATTACH_CNT               ) as ATTACH_CNT
    ,sum(t1.BEAR_CREATE_REQ_CNT      ) as BEAR_CREATE_REQ_CNT
    ,sum(t1.S1U_FLOW                 ) as S1U_FLOW
    ,sum(t1.UPDATE_LOCATION_REQ_CNT  ) as UPDATE_LOCATION_REQ_CNT
    ,sum(t1.PAGING_REQ_CNT           ) as PAGING_REQ_CNT
from
    (
    select
        cast(substr(cast(a.DATETIME_KEY as varchar),1,8)as bigint) as DAY_KEY
        ,cast(substr(cast(a.DATETIME_KEY as varchar),9,2)as bigint) as HOUR_KEY
        ,''江苏'' as CITY_NAME
        ,null as S_CSCF_SUCC_RATE
        ,sum(a.INIT_REGIST_REQ_COUNT  ) as S_CSCF_SEQ_CNT
        ,sum(a.INIT_REGIST_SUCC_COUNT ) as S_CSCF_SUCC_CNT
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
        DW_INIT_REGIST_SUCC_'||v_day||' a
    where a.DATETIME_KEY>='||v_start_time_key||' and a.DATETIME_KEY<'||v_end_time_key||'
    group by DAY_KEY,HOUR_KEY
    
    union all
    
    select
        cast(substr(cast(a.DATETIME_KEY as varchar),1,8)as bigint) as DAY_KEY
        ,cast(substr(cast(a.DATETIME_KEY as varchar),9,2)as bigint) as HOUR_KEY
    	,''江苏'' as CITY_NAME
        ,null as S_CSCF_SUCC_RATE
        ,null as S_CSCF_SEQ_CNT
        ,null as S_CSCF_SUCC_CNT
		,null as S_SBC_SUCC_RATE
        ,null as S_SBC_SEQ_CNT
        ,null as S_SBC_SUCC_CNT
        ,null as ESRVCC_SUCC_RATE
        ,sum(a.SRVCC_CHANG_REQ_COUNT  ) as ESRVCC_SEQ_CNT
        ,sum(a.SRVCC_CHANG_SUCC_COUNT ) as ESRVCC_SUCC_CNT
        ,null as ATTACH_CNT
        ,null as BEAR_CREATE_REQ_CNT
        ,null as S1U_FLOW
        ,null as UPDATE_LOCATION_REQ_CNT
        ,null as PAGING_REQ_CNT    
    from 
        V_DW_SRVCC_SUCC a
    where a.DATETIME_KEY>='||v_start_time_key||' and a.DATETIME_KEY<'||v_end_time_key||'
    group by DAY_KEY,HOUR_KEY
    )t1
group by t1.DAY_KEY,t1.HOUR_KEY,t1.CITY_NAME


';
	print v_sql_text;
	execute immediate with result set on v_sql_text;                                                                        
	commit;      
end
GO
