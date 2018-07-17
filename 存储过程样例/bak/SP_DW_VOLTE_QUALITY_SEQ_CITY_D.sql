CREATE OR REPLACE PROCEDURE dw.SP_DW_VOLTE_QUALITY_SEQ_CITY_D(
	  in v_day_key bigint
)
on exception resume
begin
    declare v_sql_text varchar(32000);
	
    set v_sql_text = 'delete from dw.DW_VOLTE_QUALITY_SEQ_CITY_D where DAY_KEY='||v_day_key||'';

    print v_sql_text;
	execute immediate with result set on v_sql_text;
	commit;
	
   set v_sql_text ='
insert into DW_VOLTE_QUALITY_SEQ_CITY_D
(
DAY_KEY
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
    a.DAY_KEY
    ,a.CITY_NAME
    ,case when S_CSCF_SEQ_CNT=0 then null else S_CSCF_SUCC_CNT*100.0/S_CSCF_SEQ_CNT end as S_CSCF_SUCC_RATE
    ,sum(a.S_CSCF_SEQ_CNT   ) as S_CSCF_SEQ_CNT
    ,sum(a.S_CSCF_SUCC_CNT  ) as S_CSCF_SUCC_CNT
    ,case when S_SBC_SEQ_CNT=0 then null else S_SBC_SUCC_CNT*100.0/S_SBC_SEQ_CNT end as S_SBC_SUCC_RATE
    ,sum(a.S_SBC_SEQ_CNT    ) as S_SBC_SEQ_CNT
    ,sum(a.S_SBC_SUCC_CNT   ) as S_SBC_SUCC_CNT
    ,case when ESRVCC_SEQ_CNT=0 then null else ESRVCC_SUCC_CNT*100.0/ESRVCC_SEQ_CNT end as ESRVCC_SUCC_RATE
    ,sum(a.ESRVCC_SEQ_CNT   ) as ESRVCC_SEQ_CNT
    ,sum(a.ESRVCC_SUCC_CNT  ) as ESRVCC_SUCC_CNT
    ,sum(a.ATTACH_CNT               ) as ATTACH_CNT
    ,sum(a.BEAR_CREATE_REQ_CNT      ) as BEAR_CREATE_REQ_CNT
    ,sum(a.S1U_FLOW                 ) as S1U_FLOW
    ,sum(a.UPDATE_LOCATION_REQ_CNT  ) as UPDATE_LOCATION_REQ_CNT
    ,sum(a.PAGING_REQ_CNT           ) as PAGING_REQ_CNT
from DW_VOLTE_QUALITY_SEQ_CITY_H a
where a.DAY_KEY='||v_day_key||'
group by a.DAY_KEY,a.CITY_NAME
   
';
	print v_sql_text;
	execute immediate with result set on v_sql_text;                                                                        
	commit;      
end
GO
