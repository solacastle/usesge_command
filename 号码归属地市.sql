--视频累计去重用户数（按号码归属）
select
    201805 as MONTH_KEY
    ,case when b.CITY_NAME is not null then b.CITY_NAME else '省外' end as CITY_NAME
	,count(distinct a.MSISDN) as USERCNT
from 
    DW_VIDEO_USER_L1_M a
    left join
    (
    select
       distinct
       sub_region_label as CITY_NAME
       ,city_id as CITY_CODE   
       ,CHAR_IMSI_CODE
    from DW_DM_RE_IMSI_CODE
    where imsi_type='JIANGSU' and region_label='江苏'
    ) b
	on substr(cast(a.imsi as varchar),1,10)=b.CHAR_IMSI_CODE
where a.MONTH_KEY=201805
group by CITY_NAME