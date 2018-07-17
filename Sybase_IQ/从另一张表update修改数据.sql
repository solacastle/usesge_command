update DW_ASSESSMENT_CELL_D_05 set LTE_WIRE_RATE = null;

go

update DW_ASSESSMENT_CELL_D_05
set a.LTE_WIRE_RATE = b.LTE_WIRE_RATE
from 
    DW_ASSESSMENT_CELL_D_05 a
	,
	(
    select
    a.CGI
    ,avg(a.WXLYV) as LTE_WIRE_RATE
    from WY_F_L_C_SIX_EUTRANCELLTDD_H a
    where a.START_TIME=(select max(START_TIME) from WY_F_L_C_SIX_EUTRANCELLTDD_H where START_TIME<='20180515')
    group by a.CGI
    ) b   
where a.ECGI = b.CGI and a.day_key=20180515;


update DW_ASSESSMENT_RES_D_05 set LTE_WIRE_RATE=null;

go

update DW_ASSESSMENT_RES_D_05
set a.LTE_WIRE_RATE = b.LTE_WIRE_RATE
from 
    DW_ASSESSMENT_RES_D_05 a
	,
	(
    select
        b.CITY_NAME
	    ,b.RESIDENT_NAME
        ,avg(a.WXLYV) as LTE_WIRE_RATE
    from 
	    WY_F_L_C_SIX_EUTRANCELLTDD_H a
	    join
		(select CITY_NAME,RESIDENT_NAME,CELL_NAME,ECGI from DW_ASSESSMENT_CELL_LIST_M where MONTH_KEY=201804) b 
    	on a.CGI=b.ECGI
    where a.START_TIME=(select max(START_TIME) from WY_F_L_C_SIX_EUTRANCELLTDD_H where START_TIME<='20180515')
    group by b.CITY_NAME,b.RESIDENT_NAME
    ) b   
where a.CITY_NAME = b.CITY_NAME and a.RESIDENT_NAME = b.RESIDENT_NAME and a.day_key=20180515


update DW_ASSESSMENT_CELL_M set LTE_WIRE_RATE = null;

go

update DW_ASSESSMENT_CELL_M
set a.LTE_WIRE_RATE = b.LTE_WIRE_RATE
from 
    DW_ASSESSMENT_CELL_M a
	,
	(
    select
    a.CGI
    ,avg(a.WXLYV) as LTE_WIRE_RATE
    from WY_F_L_C_SIX_EUTRANCELLTDD_H a
    where a.START_TIME=(select max(START_TIME) from WY_F_L_C_SIX_EUTRANCELLTDD_H where START_TIME<='20180515')
    group by a.CGI
    ) b   
where a.ECGI = b.CGI and a.month_key=201804;


update DW_ASSESSMENT_RES_M set LTE_WIRE_RATE=null;

go

update DW_ASSESSMENT_RES_M
set a.LTE_WIRE_RATE = b.LTE_WIRE_RATE
from 
    DW_ASSESSMENT_RES_M a
	,
	(
    select
        b.CITY_NAME
	    ,b.RESIDENT_NAME
        ,avg(a.WXLYV) as LTE_WIRE_RATE
    from 
	    WY_F_L_C_SIX_EUTRANCELLTDD_H a
	    join
		(select CITY_NAME,RESIDENT_NAME,CELL_NAME,ECGI from DW_ASSESSMENT_CELL_LIST_M where MONTH_KEY=201804) b 
    	on a.CGI=b.ECGI
    where a.START_TIME=(select max(START_TIME) from WY_F_L_C_SIX_EUTRANCELLTDD_H where START_TIME<='20180515')
    group by b.CITY_NAME,b.RESIDENT_NAME
    ) b   
where a.CITY_NAME = b.CITY_NAME and a.RESIDENT_NAME = b.RESIDENT_NAME and a.month_key=201804;


