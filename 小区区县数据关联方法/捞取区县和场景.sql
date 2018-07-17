--捞取区县。场景

select COUNTRY_ZHNAME,CITY_ZHNAME,COUNTRY_KEY_RMS from dw_dm_co_country         --COUNTRY_KEY_RMS

select ECGI,city_id,COVER_APPERCEIVE from rms_eutrancell     --ECGI       --city_id            --COVER_APPERCEIVE  场景

rms_eutrancell.city_id=dw_dm_co_country.COUNTRY_KEY_RMS

select * from DW_DM_CO_COVERFLAG --场景

rms_eutrancell.city_id=dw_dm_co_city.country_id_rms   --场景关联



--ECGI,CI关联区县,地市,小区名称信息
select
    a.ECGI
	,a.CI
	,a.ZH_LABEL as CELL_NAME
    ,b.CITY_ZHNAME as CITY_NAME
    ,b.COUNTRY_ZHNAME AS COUNTRY_NAME
from 
    (
	select ECGI,CI,city_id,COVER_APPERCEIVE,ZH_LABEL 
	from rms_eutrancell 
	where TIME_STAMP=(select max(TIME_STAMP) from rms_eutrancell)
	) a
    join
    (select COUNTRY_ZHNAME,CITY_ZHNAME,COUNTRY_KEY_RMS from dw_dm_co_country) b
    on a.city_id=b.COUNTRY_KEY_RMS
 