CREATE OR REPLACE PROCEDURE dw.SP_DW_DM_TERMINAL_PER_4G_TAC_SV_VENDOR_W(
	  in v_day_key bigint
)
on exception resume
begin
    declare v_sql_text varchar(32000);
    declare v_month_key bigint;
	declare var_month_key1 varchar(50);
	declare v_double_day varchar(50);
	declare v_start_time varchar(50);
	declare v_month varchar(50);
	declare v_day varchar(50);
	declare v_day_key2 bigint;
	
	set v_month = substr(cast(v_day_key as varchar),5,2);
	set v_day = substr(cast(v_day_key as varchar),7,2);
	set v_month_key = cast(substr(cast(v_day_key as varchar),1,6) as int);
    set var_month_key1 = case when v_month_key % 2=1 then '01' else '02' end; 
    set v_double_day = var_month_key1||v_day;
    set v_start_time = substr(cast(v_day_key as varchar),1,4)||'-'||v_month||'-'||v_day||' '||'00:00:00';
	set v_day_key2 = cast(dateformat(DATEADD(dd,+6,v_start_time),'yyyymmdd')as bigint);
		
    set v_sql_text = 'delete from dw.DW_DM_TERMINAL_PER_4G_TAC_SV_VENDOR_W where WEEK_KEY='||v_day_key||'';
    
	print v_day_key;
	print v_day_key2;
    print v_sql_text;
	execute immediate with result set on v_sql_text;
	commit;
	
   set v_sql_text ='
insert into DW_DM_TERMINAL_PER_4G_TAC_SV_VENDOR_W_'||v_month||'
(
WEEK_KEY
,CITY_CODE
,TAC8
,SV
,VENDOR_NAME
,USER_COUNT
,ATTACH_SUCC_RATE
,NUMOFATTACH
,NUMOFATTACHSUCC
,ATTACH_SUCC_RATE_UNUSER
,NUMOFATTACH_UNUSER
,NUMOFATTACHSUCC_UNUSER
,ATTACHDELAY
,ATTACHDELAY_SUM
,ATTACHDELAY_CNT
,EPS_SUCC_RATE
,NUMOFEPSATTACH
,NUMOFEPSATTACHSUCC
,EPS_DELAY
,ACTDEDICATEDEPSBEARERREQ
,BEARCREATEREQ
,TAU_SUCC_RATE
,COM_TAU_REQ_CNT
,COM_TAU_SUCC_CNT
,TAU_NON_USER_CNT
,TAU_NON_USER_SUC_CNT
,PAGING_SUCC_RATE
,PAGING_1SH_REQ_CNT
,PAGING_2SH_REQ_CNT
,PAGING_REQ_CNT
,PAGING_SUCC_CNT
,NUMOFSERVICE_RATE
,NUMOFSERVICEREQ
,NUMOFSERVICEREQSUCC
,CARRY_ACTIVE_SUCC_CNT
,SPE_CARRY_ACTIVE_SUCC_CNT
,CARRY_ACTIVE_REQ_CNT
,SPE_CARRY_ACTIVE_REQ_CNT
,DNS_SUCC_RATE
,DNSREQ
,DNSRES
,DNS_QUERY_DELAY
,DNS_QUERY_DELAY_SUM
,DNS_QUERY_DELAY_CNT
,TCP_SUCC_RATE
,TCPSYN
,TCPSYNACK
,TCPACK
,TCP_DELAY
,TCP_12SH_LATENCY_SUM
,TCP_12SH_LATENCY_CNT
,TCP_23SH_LATENCY_SUM
,TCP_23SH_LATENCY_CNT
,TCP_23SH_SUCC_RATE
,HTTP_SESSREQ_RATE
,HTTP_SESSFAIL
,HTTP_SUCC_RATE
,HTTP_SESSREQ
,HTTP_SESSUCC
,HTTP_SESS_RES_LATENCY
,HTTP_SESS_RES_LATENCY_SUM
,HTTP_SESS_RES_LATENCY_CNT
,PAGE_DISPLAY_SUCC_RATE_500K
,PAGE_DISPLAY_SUCC_500K
,PAGE_DISPLAY_SEQ_500K
,PAGE_DL_RATE
,PAGE_DL_TRAFFIC
,PAGE_DL_DELAY
,BIG_PAGE_DL_TRAFFIC
,BIG_PAGE_DL_DELAY
,VIDEO_PLAY_SUCC_RATE
,VIDEO_PLAY_SUCC
,VIDEO_PLAY_CNT
,VIDEO_DL_RATE
,VIDEO_DL_TRAFFIC
,VIDEO_DL_DELAY
,HTTP_DL_RATE
,HTTP_DL_TRAFFIC
,HTTP_DL_TRAFFIC_DELAY
,MME_ENODEB_OUT_SUCC_CNT
,MME_ENODEB_IN_SUCC_CNT
,MME_ENODEB_OUT_SEQ_CNT
,MME_ENODEB_IN_SEQ_CNT
,S1_SWITCH_SUCC_RATE
,HOPREPARENUMOFINTERENBS1
,HOPREPARENUMOFINTERENBS1SUCC
,X2_SWITCH_SUCC_RATE
,HONUMOFINTERENBX2
,HONUMOFINTERENBX2SUCC
,TRAFFIC_4G_BYPASS_RATE
,ACTIVE_4G_USER_RATE
,ACTIVE_4G_USER_CNT
)
select 
    20180312 as WEEK_KEY
    ,a.CITY_CODE
    ,a.TAC8
	,a.SV
    ,a.VENDOR_NAME
	,null as USER_COUNT
    ,case when NUMOFATTACH=0 then null else NUMOFATTACHSUCC*100.0/NUMOFATTACH end as ATTACH_SUCC_RATE         
    ,sum(NUMOFATTACH)                                                as NUMOFATTACH              
    ,sum(NUMOFATTACHSUCC)                                            as NUMOFATTACHSUCC          
    ,case when NUMOFATTACH_UNUSER=0 then null else NUMOFATTACHSUCC_UNUSER*100.0/NUMOFATTACH_UNUSER end as ATTACH_SUCC_RATE_UNUSER  
    ,sum(a.NUMOFATTACH_UNUSER)                                       as NUMOFATTACH_UNUSER       
    ,sum(a.NUMOFATTACHSUCC_UNUSER)                                   as NUMOFATTACHSUCC_UNUSER   
    ,case when ATTACHDELAY_CNT=0 then null else ATTACHDELAY_SUM*1.0/ATTACHDELAY_CNT end as ATTACHDELAY              
    ,sum(a.ATTACHDELAY_SUM)                                          as ATTACHDELAY_SUM          
    ,sum(a.ATTACHDELAY_CNT)                                          as ATTACHDELAY_CNT          
    ,case when NUMOFEPSATTACH=0 then null else NUMOFEPSATTACHSUCC*100.0/NUMOFEPSATTACH end as EPS_SUCC_RATE            
    ,sum(a.NUMOFEPSATTACH)                                           as NUMOFEPSATTACH           
    ,sum(a.NUMOFEPSATTACHSUCC)                                       as NUMOFEPSATTACHSUCC       
    ,case when BEARCREATEREQ=0 then null else ACTDEDICATEDEPSBEARERREQ*1.0/BEARCREATEREQ end as EPS_DELAY                
    ,sum(a.ACTDEDICATEDEPSBEARERREQ)                                 as ACTDEDICATEDEPSBEARERREQ 
    ,sum(a.BEARCREATEREQ)                                            as BEARCREATEREQ            
    ,case when TAU_NON_USER_CNT=0 then null else TAU_NON_USER_SUC_CNT*100.0/TAU_NON_USER_CNT end as TAU_SUCC_RATE            
    ,sum(a.COM_TAU_REQ_CNT)                                          as COM_TAU_REQ_CNT          
    ,sum(a.COM_TAU_SUCC_CNT)                                         as COM_TAU_SUCC_CNT         
    ,sum(TAU_NON_USER_CNT)                                           as TAU_NON_USER_CNT         
    ,sum(a.TAU_NON_USER_SUC_CNT)                                     as TAU_NON_USER_SUC_CNT     
    ,case when PAGING_REQ_CNT=0 then null else PAGING_SUCC_CNT*100.0/PAGING_REQ_CNT end as PAGING_SUCC_RATE         
    ,sum(a.PAGING_1SH_REQ_CNT)                                       as PAGING_1SH_REQ_CNT       
    ,sum(a.PAGING_2SH_REQ_CNT)                                       as PAGING_2SH_REQ_CNT       
    ,sum(a.PAGING_REQ_CNT)                                           as PAGING_REQ_CNT           
    ,sum(a.PAGING_SUCC_CNT)                                          as PAGING_SUCC_CNT          
    ,case when NUMOFSERVICEREQ=0 then null else NUMOFSERVICEREQSUCC*100.0/NUMOFSERVICEREQ end as NUMOFSERVICE_RATE        
    ,sum(a.NUMOFSERVICEREQ)                                          as NUMOFSERVICEREQ          
    ,sum(a.NUMOFSERVICEREQSUCC)                                      as NUMOFSERVICEREQSUCC      
    ,sum(a.CARRY_ACTIVE_SUCC_CNT)                                    as CARRY_ACTIVE_SUCC_CNT    
    ,sum(a.SPE_CARRY_ACTIVE_SUCC_CNT)                                as SPE_CARRY_ACTIVE_SUCC_CNT
    ,sum(a.CARRY_ACTIVE_REQ_CNT)                                     as CARRY_ACTIVE_REQ_CNT     
    ,sum(a.SPE_CARRY_ACTIVE_REQ_CNT)                                 as SPE_CARRY_ACTIVE_REQ_CNT 	
    ,sum(a.MME_ENODEB_OUT_SUCC_CNT)                                  as MME_ENODEB_OUT_SUCC_CNT     
    ,sum(a.MME_ENODEB_IN_SUCC_CNT)                                   as MME_ENODEB_IN_SUCC_CNT      
    ,sum(a.MME_ENODEB_OUT_SEQ_CNT)                                   as MME_ENODEB_OUT_SEQ_CNT      
    ,sum(a.MME_ENODEB_IN_SEQ_CNT)                                    as MME_ENODEB_IN_SEQ_CNT       
    ,case when HOPREPARENUMOFINTERENBS1=0 then null else HOPREPARENUMOFINTERENBS1SUCC*100.0/HOPREPARENUMOFINTERENBS1 end as S1_SWITCH_SUCC_RATE         
    ,sum(a.HOPREPARENUMOFINTERENBS1)                                 as HOPREPARENUMOFINTERENBS1    
    ,sum(a.HOPREPARENUMOFINTERENBS1SUCC)                             as HOPREPARENUMOFINTERENBS1SUCC
    ,case when HONUMOFINTERENBX2=0 then null else HONUMOFINTERENBX2SUCC*100.0/HONUMOFINTERENBX2 end as X2_SWITCH_SUCC_RATE         
    ,sum(a.HONUMOFINTERENBX2)                                        as HONUMOFINTERENBX2           
    ,sum(a.HONUMOFINTERENBX2SUCC)                                    as HONUMOFINTERENBX2SUCC      
    ,case when TCPSYN=0 then null else TCPACK*100.0/TCPSYN end       as TCP_SUCC_RATE
    ,sum(a.TCPSYN)                                                   as TCPSYN
    ,sum(a.TCPSYNACK)                                                as TCPSYNACK
    ,sum(a.TCPACK)                                                   as TCPACK
    ,(case when TCP_12SH_LATENCY_CNT=0 then 0 else TCP_12SH_LATENCY_SUM*1.0/TCP_12SH_LATENCY_CNT end)+(case when TCP_23SH_LATENCY_CNT=0 then 0 else TCP_23SH_LATENCY_SUM*1.0/TCP_23SH_LATENCY_CNT end) as TCP_DELAY                  
    ,sum(a.TCP_12SH_LATENCY_SUM)                                     as TCP_12SH_LATENCY_SUM
    ,sum(a.TCP_12SH_LATENCY_CNT)                                     as TCP_12SH_LATENCY_CNT
    ,sum(a.TCP_23SH_LATENCY_SUM)                                     as TCP_23SH_LATENCY_SUM
    ,sum(a.TCP_23SH_LATENCY_CNT)                                     as TCP_23SH_LATENCY_CNT
    ,case when TCPSYNACK=0 then null else TCPACK*100.0/TCPSYNACK end as TCP_23SH_SUCC_RATE
    ,case when HTTP_SESSREQ=0 then null else (HTTP_SESSREQ-HTTP_SESSFAIL)*100.0/HTTP_SESSREQ end as HTTP_SESSREQ_RATE
    ,sum(a.HTTP_SESSFAIL)                                            as HTTP_SESSFAIL
    ,case when HTTP_SESSREQ=0 then null else HTTP_SESSUCC*100.0/HTTP_SESSREQ end as HTTP_SUCC_RATE
    ,sum(a.HTTP_SESSREQ)                                             as HTTP_SESSREQ
    ,sum(a.HTTP_SESSUCC)                                             as HTTP_SESSUCC
    ,case when HTTP_SESS_RES_LATENCY_CNT=0 then null else HTTP_SESS_RES_LATENCY_SUM*1.0/HTTP_SESS_RES_LATENCY_CNT end as HTTP_SESS_RES_LATENCY
    ,sum(a.HTTP_SESS_RES_LATENCY_SUM)                                as HTTP_SESS_RES_LATENCY_SUM  
    ,sum(a.HTTP_SESS_RES_LATENCY_CNT)                                as HTTP_SESS_RES_LATENCY_CNT
    ,case when PAGE_DISPLAY_SEQ_500K=0 then null else PAGE_DISPLAY_SUCC_500K*100.0/PAGE_DISPLAY_SEQ_500K end as PAGE_DISPLAY_SUCC_RATE_500K
    ,sum(a.PAGE_DISPLAY_SUCC_500K)                                   as PAGE_DISPLAY_SUCC_500K
    ,sum(a.PAGE_DISPLAY_SEQ_500K)                                    as PAGE_DISPLAY_SEQ_500K
    ,case when PAGE_DL_DELAY=0 then null else PAGE_DL_TRAFFIC*8000.0/1024/PAGE_DL_DELAY end as PAGE_DL_RATE
    ,sum(a.PAGE_DL_TRAFFIC)                                          as PAGE_DL_TRAFFIC
    ,sum(a.PAGE_DL_DELAY)                                            as PAGE_DL_DELAY
    ,sum(a.BIG_PAGE_DL_TRAFFIC)                                      as BIG_PAGE_DL_TRAFFIC
    ,sum(a.BIG_PAGE_DL_DELAY)                                        as BIG_PAGE_DL_DELAY
    ,case when VIDEO_PLAY_CNT=0 then null else VIDEO_PLAY_SUCC*100.0/VIDEO_PLAY_CNT end as VIDEO_PLAY_SUCC_RATE
    ,sum(a.VIDEO_PLAY_SUCC)                                          as VIDEO_PLAY_SUCC
    ,sum(a.VIDEO_PLAY_CNT)                                           as VIDEO_PLAY_CNT
    ,case when VIDEO_DL_DELAY=0 then null else VIDEO_DL_TRAFFIC*8000.0/1024/VIDEO_DL_DELAY end as VIDEO_DL_RATE
    ,sum(a.VIDEO_DL_TRAFFIC)                                         as VIDEO_DL_TRAFFIC
    ,sum(a.VIDEO_DL_DELAY)                                           as VIDEO_DL_DELAY
    ,case when HTTP_DL_TRAFFIC_DELAY=0 then null else HTTP_DL_TRAFFIC*8000.0/1024/HTTP_DL_TRAFFIC_DELAY end as HTTP_DL_RATE
    ,sum(a.HTTP_DL_TRAFFIC)                                          as HTTP_DL_TRAFFIC
    ,sum(a.HTTP_DL_TRAFFIC_DELAY)                                    as HTTP_DL_TRAFFIC_DELAY	
	,case when DNSREQ=0 then null else DNSRES*100.0/DNSREQ end       as DNS_SUCC_RATE
    ,sum(a.DNSREQ)                                                   as DNSREQ
    ,sum(a.DNSRES)                                                   as DNSRES
    ,case when DNS_QUERY_DELAY_CNT=0 then null else DNS_QUERY_DELAY_SUM*1.0/DNS_QUERY_DELAY_CNT end as DNS_QUERY_DELAY
    ,sum(a.DNS_QUERY_DELAY_SUM)                                       as DNS_QUERY_DELAY_SUM
    ,sum(a.DNS_QUERY_DELAY_CNT)                                       as DNS_QUERY_DELAY_CNT
	,null as TRAFFIC_4G_BYPASS_RATE
    ,100 as ACTIVE_4G_USER_RATE
    ,max(a.ACTIVE_4G_USER_CNT) as ACTIVE_4G_USER_CNT
from DW_DM_TERMINAL_PER_4G_TAC_SV_VENDOR_D_'||v_month||' a
where a.day_key>='||v_day_key||' and a.day_key<='||v_day_key2||'
group by a.CITY_CODE,a.TAC8,a.SV,a.VENDOR_NAME
';
	print v_sql_text;
	execute immediate with result set on v_sql_text;                                                                        
	commit;      
end
GO
