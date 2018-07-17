--字符日期转换-MONTH_KEY减1个月


select 
distinct MONTH_KEY,
dateformat(DATEADD(mm,-1,substr(cast(MONTH_KEY as varchar),0,4)||'-'||substr(cast(MONTH_KEY as varchar),5,7)||'-01 01:00:00'),'yyyymm') as MONTH_KEY2
from DW_DM_TAC_PROPERTY



dateformat('2018-01-05 10:00:00','yyyymmdd')
DATEADD(mm,+1,'2018-01-05 10:00:00')
DATEADD(dd,+1,'2018-01-05 10:00:00')
DATEADD(mi,+1,'2018-01-05 10:00:00')

dateformat(DATEADD(dd,+1,'2018-01-05 00:00:00'),'yyyymmdd')

--日期转日期
dateformat('20180417100000','yyyy-mm-dd hh:nn:ss')

--日期转字符
select dateformat('2018-01-05 10:15:00','yyyy-mm-dd hh:nn:ss')   --正常

--也可使用截取方法

set v_quarter_key = cast(substr(cast(v_start_time as varchar),1,4)||substr(cast(v_start_time as varchar),6,2)||substr(cast(v_start_time as varchar),9,2)||substr(cast(v_start_time as varchar),12,2)||substr(cast(v_start_time as varchar),15,2) as bigint)
