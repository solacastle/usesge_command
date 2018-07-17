--取号码的top3常驻小区 ECGI,场景

-----------------------1
--  drop table dw_dm_user_prop_LZP_1
select
    a.msisdn
	,b.ecgi
	,b.user_top
into dw_dm_user_prop_LZP_1
from swxt.dw_dm_user_prop_LZP a,
    (select distinct msisdn,ecgi,user_top 
	 from swxt.t_lteuser_cz_cell_top10 
	 where month_key=201706 and user_top in (1,2,3)
	) b
where a.msisdn=b.msisdn
					
-----------------------2
--drop table dw_dm_user_prop_LZP_2

select
    a.msisdn
	,a.ecgi
	,a.user_top
	,c.COVERFLAG_ZHNAME
into dw_dm_user_prop_LZP_2
from dw_dm_user_prop_LZP_1 a,
    (
	select distinct ECGI,city_id,COVER_APPERCEIVE 
	from swxt.rms_eutrancell
	where TIME_STAMP>='2017-06-15 00:00:00' and TIME_STAMP<'2017-06-16 00:00:00' and ECGI <>''
	) b,
    (select COVERFLAG_KEY,COVERFLAG_ZHNAME from DW_DM_CO_COVERFLAG) c
			
where a.ECGI=b.ECGI and b.COVER_APPERCEIVE=c.COVERFLAG_KEY	

----------------------3
select
    a.msisdn
	,a.ecgi as ecgi_1
	,a.COVERFLAG_ZHNAME as COVERFLAG_ZHNAME_1
	,b.ecgi as ecgi_2
	,b.COVERFLAG_ZHNAME as COVERFLAG_ZHNAME_2
	,c.ecgi as ecgi_3
	,c.COVERFLAG_ZHNAME as COVERFLAG_ZHNAME_3
into dw_dm_user_prop_LZP_3
from 
    (select * from dw_dm_user_prop_LZP_2 where user_top=1)a
     left join (select * from dw_dm_user_prop_LZP_2 where user_top=2)b
                on a.msisdn=b.msisdn
     left join (select * from dw_dm_user_prop_LZP_2 where user_top=3)c
                on a.msisdn=c.msisdn

