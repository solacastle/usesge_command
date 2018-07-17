--增加一个字段标识位用来标识top10

select 
msisdn
,radio_conn_rate
,rank() over(partition by msisdn order by radio_conn_rate DESC ) AS user_top

from O_SE_RESIDENT_CELL_M_MAX_201705 a