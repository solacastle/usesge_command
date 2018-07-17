select msisdn,USER_CZ_ZHNAME,CI from swxt.T_USER_LOCATION_LABEL
where msisdn in (13625125230,13773518885,18206155512) and month_key=201705

select * from swxt.t_lteuser_cz_cell_top10
where msisdn in (13625125230,13773518885,18206155512) and month_key=201705
and user_top=1

