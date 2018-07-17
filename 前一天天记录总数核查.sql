select day_key,city_code,count(1)  from  o_p2p_ctl_2cell_mme_D_03  where day_key=20170207  group by day_key,city_code  
go

---共享层-天
select day_key,city_code,count(1)  from  O_SE_P2P_USER_L3_D_03  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  O_SE_P2P_USER_D_03  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  O_SE_P2P_CELL_L3_D_03  where day_key=20170207  group by day_key,city_code 
go   
select day_key,city_code,count(1)  from  O_SE_P2P_CELL_D_cur  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  O_SE_P2P_SGSN_SGW_L3_D_cur  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  DM_SE_P2P_CITY_L1_D_cur  where day_key=20170207  group by day_key,city_code 
go
select day_key,city_code,count(1)  from  DM_SE_P2P_CITY_L3_D_cur  where day_key=20170207  group by day_key,city_code 
go
select day_key,city_code,count(1)  from  DM_SE_P2P_TAC_L3_D_cur  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  DM_SE_P2P_TAC_D_cur  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  DM_SE_P2P_TAC_L1_D_cur  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  O_SE_P2P_SP_DETAIL_D_cur  where day_key=20170207  group by day_key,city_code 
go
select day_key,city_code,count(1)  from  O_SE_P2P_DNS_D_03  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  O_P2P_CTL_CELL_MME_D_cur  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  O_P2P_CTL_TAC_MME_D_cur  where day_key=20170207  group by day_key,city_code 
go
select day_key,city_code,count(1)  from  O_P2P_CTL_USER_MME_D_03  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  DM_P2P_CTL_MMEIP_MME_D_cur  where day_key=20170207  group by day_key,city_code 
go
select day_key,city_code,count(1)  from  DM_SE_P2P_TAC_count  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  DM_SE_P2P_USER_count  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  DM_SE_P2P_L1_USER_count_cur  where day_key=20170207  group by day_key,city_code 
go
select day_key,city_code,count(1)  from  DM_SE_P2P_L3_USER_count_cur  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  DM_SE_P2P_4G_USER_count  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from  O_P2P_CTL_MME_USER_COUNT  where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from dm_p2p_ctl_mmeip_gpv2_d_cur where day_key=20170207  group by day_key,city_code  
go
select day_key,city_code,count(1)  from dm_p2p_ctl_mmeip_s6a_d_cur where day_key=20170207  group by day_key,city_code 
go
select day_key,citycode,count(1)  from o_p2p_ctl_tac_gpv2_d_cur  where day_key=20170207  group by day_key,citycode
go
select day_key,city_code,count(1)  from  o_p2p_ctl_tac_s6a_d_cur  where day_key=20170207  group by day_key,city_code
go
select day_key,city_code,count(1)  from o_p2p_ctl_user_gpv2_D_03  where day_key=20170207  group by day_key,city_code
go
select day_key,city_code,count(1)  from  o_p2p_ctl_user_s6a_D_03  where day_key=20170207  group by day_key,city_code
go 
select day_key,city_code,count(1)  from  O_SE_P2P_CELLTAC_D_03  where day_key=20170207  group by day_key,city_code
go 
select day_key,city_code,count(1)  from O_SE_P2P_DOMAIN_L3_D_cur where day_key=20170207  group by day_key,city_code
go
select day_key,city_code,count(1)  from   O_SE_P2P_SP_DOMAIN_L3_D_03 where day_key=20170207  group by day_key,city_code
go
select day_key,city_code,count(1)  from  O_SE_P2P_DNS_DOMAIN_D_03 where day_key=20170207  group by day_key,city_code
go
select day_key,city_code,count(1) from O_SE_P2P_ERR_SP_L3_D_cur            where day_key=20170207 group by day_key,city_code
go
select day_key,city_code,count(1) from O_SE_P2P_ERR_TAC_L3_D_cur           where day_key=20170207 group by day_key,city_code
go
select day_key,city_code,count(1) from O_SE_P2P_ERR_CELL_L3_D_03           where day_key=20170207 group by day_key,city_code 
go
select day_key,city_code,count(1) from O_SE_P2P_ERR_SGW_L3_D_cur           where day_key=20170207 group by day_key,city_code 
go
select day_key,city_code,count(1) from O_SE_P2P_ERR_USER_L3_D_03           where day_key=20170207 group by day_key,city_code
go
select day_key,city_code,count(1) from O_SE_P2P_ERR_DOMAIN_L3_D_cur        where day_key=20170207 group by day_key,city_code
go
select day_key,city_code,count(1) from O_SE_P2P_ERR_SP_DOMAIN_L3_D_03      where day_key=20170207 group by day_key,city_code
go
select day_key,city_code,count(1) from O_SE_P2P_ERR_L3_D_cur               where day_key=20170207 group by day_key,city_code
go
select day_key,city_code,count(1) from O_SE_P2P_ERR_DNS_L3_D_03            where day_key=20170207 group by day_key,city_code
go
select day_key,city_code,count(1) from O_SE_P2P_ERR_DNS_DOMAIN_L3_D_cur    where day_key=20170207 group by day_key,city_code
go
select day_key,city_code ,count(1) from o_se_p2p_user_cell_d_03  where day_key=20170207
group by day_key,city_code
go
select  day_key,city_code,count(1)  from O_SE_P2P_CELL_SGW_D_03 where day_key=20170207
group by day_key,city_code
go
select  day_key,city_code,count(1)  from O_P2P_CTL_CELLTAC_MME_D_03 where day_key=20170207
group by day_key,city_code
go
select distinct hour_key from DW_TAC_23G_FLOW_TOTAL_D  where day_key=20170207
go
select distinct hour_key from O_SE_P2P_APP_USER_COUNT_D where day_key=20170207
go
select distinct hour_key from O_SE_P2P_APP_TAC_D where day_key=20170207
go
select distinct hour_key from O_SE_P2P_APP_CELL_D where day_key=20170207
go
select distinct hour_key from O_SE_P2P_APP_USER_D_03 where day_key=20170207
go 
select distinct hour_key from O_SE_P2P_APP_CITY_D where day_key=20170207
go 
select distinct hour_key from O_SE_P2P_APP_SGSN_D where day_key=20170207
go 
select distinct hour_key from O_SE_P2P_APP_SPIP_D where day_key=20170207
go
select day_key,city_code ,count(1) from VOLTE_USER_CNT_02 where day_key=20170207
group by day_key,city_code

---告警短信配置表
check_cm_table

---共享层小时 23G新建表（134库、132库都有）
select hour_key,count(1) from O_SE_P2P_USER_L3_H_23G_0223         where day_key=20170207 and  day_key,city_code !=4 group by hour_key     
go
select hour_key,count(1) from O_SE_P2P_USER_H_23G_0213            where day_key=20170207 and  day_key,city_code !=4 group by hour_key
go
select hour_key,count(1) from O_SE_P2P_CELL_L3_H_23G_0213         where day_key=20170207 and  day_key,city_code !=4 group by hour_key
go
select hour_key,count(1) from O_SE_P2P_CELL_H_23G_02             where day_key=20170207 and  day_key,city_code !=4 group by hour_key
go
select hour_key,count(1) from O_SE_P2P_SGSN_SGW_L3_H_23G_02      where day_key=20170207 and  day_key,city_code !=4 group by hour_key
go
select hour_key,count(1) from DM_SE_P2P_CITY_L3_H_23G_cur         where day_key=20170207 and  day_key,city_code !=4 group by hour_key
go
select hour_key,count(1) from DM_SE_P2P_TAC_L3_H_23G_02          where day_key=20170207 and  day_key,city_code !=4 group by hour_key
go
select hour_key,count(1) from DM_SE_P2P_TAC_H_23G_02             where day_key=20170207 and  day_key,city_code !=4 group by hour_key
go
select hour_key,count(1) from O_SE_P2P_SP_DETAIL_H_23G_0213       where day_key=20170207 and  day_key,city_code !=4 group by hour_key
go
 select                                                                   
 hour_key,count(1)                                                                  
 from  DM_SE_P2P_CITY_L1_H_cur t1  where  day_key=20170207 and  day_key,city_code !=4  group by hour_key                
go      
 select                                                                   
 hour_key,count(1)                                                                  
 from  O_SE_P2P_USER_L1_H_0213 t1  where  day_key=20170207 and  day_key,city_code !=4   group by hour_key                
go  
select                                                                   
 hour_key,count(1)                                                                  
 from  DM_SE_P2P_TAC_L1_H_02  t1    where  day_key=20170207   and  day_key,city_code !=4 group by hour_key               
go  



----LTE信令试点-天表
select distinct hour_key from  O_P2P_CSFB_PROC_count where START_TIME='2015-10-04 00:00:00'
go
select distinct hour_key from  O_P2P_CSFB_CITY_count where START_TIME='2015-10-04 00:00:00'
go
select distinct hour_key from  O_P2P_CSFB_MSC_count where START_TIME='2015-10-04 00:00:00'
go
select distinct hour_key from  O_P2P_CSFB_ENODEB_count where START_TIME='2015-10-04 00:00:00'
go
select distinct hour_key from  O_P2P_CSFB_CITY_DAY_STAT where START_TIME='2015-10-04 00:00:00'
go
select distinct hour_key from  O_P2P_CSFB_TAC_DAY_STAT  where START_TIME='2015-10-04 00:00:00'
go
select distinct hour_key from  O_P2P_CSFB_TAC8_DAY_STAT  where START_TIME='2015-10-04 00:00:00'
go



---LTE信令试点-小时表
select substr(cast(START_TIME as varchar),1,13) as '时间',count(1) from O_P2P_CSFB_CITY_HOUR_STAT
where START_TIME>='2015-10-05 00:00:00'
group by substr(cast(START_TIME as varchar),1,13)

select substr(cast(START_TIME as varchar),1,13) as '时间',count(1) from O_P2P_CSFB_TAC_HOUR_STAT
where START_TIME>='2015-10-05 00:00:00'
group by substr(cast(START_TIME as varchar),1,13)

select substr(cast(START_TIME as varchar),1,13) as '时间',count(1) from O_P2P_CSFB_TAC8_HOUR_STAT
where START_TIME>='2015-10-05 00:00:00'
group by substr(cast(START_TIME as varchar),1,13)

select substr(cast(START_TIME as varchar),1,13) as '时间',count(1) from O_P2P_VOLTE_CITY_H
where START_TIME>='2015-10-05 00:00:00'
group by substr(cast(START_TIME as varchar),1,13)

---流量欺诈用户
select * from USER_TRAFFIC_FRAUD_TOTAL

---居民区
select * from dw_se_residential_area


---共享层-小时(LTE)
select hour_key,count(1) from O_SE_P2P_USER_DETAIL_4G_H_NJ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_USER_DETAIL_4G_H_ZJ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_USER_DETAIL_4G_H_CZ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_USER_L3_H_NJ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_USER_L3_H_ZJ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_USER_L3_H_CZ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_USER_L1_H_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_USER_H_NJ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_USER_H_ZJ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_USER_H_CZ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_CELL_L3_H_NJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_CELL_L3_H_ZJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_CELL_L3_H_CZ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_CELL_H_NJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_CELL_H_ZJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_CELL_H_CZ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_SGSN_SGW_L3_H_NJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_SGSN_SGW_L3_H_ZJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_SGSN_SGW_L3_H_CZ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_CITY_L1_H_cur
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_CITY_L3_H_NJ_cur
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_CITY_L3_H_ZJ_cur
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_CITY_L3_H_CZ_cur
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_TAC_L3_H_NJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_TAC_L3_H_ZJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_TAC_L3_H_CZ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_TAC_H_NJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_TAC_H_ZJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_TAC_H_CZ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_TAC_L1_H_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_SP_DETAIL_H_NJ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_SP_DETAIL_H_ZJ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_SP_DETAIL_H_CZ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_DNS_H_NJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_DNS_H_ZJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_DNS_H_CZ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_P2P_CTL_CELL_MME_H_NJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_P2P_CTL_CELL_MME_H_NJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_P2P_CTL_CELL_MME_H_NJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_P2P_CTL_TAC_MME_H_NJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_P2P_CTL_TAC_MME_H_ZJ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_P2P_CTL_TAC_MME_H_CZ_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_P2P_CTL_USER_MME_H_NJ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_P2P_CTL_USER_MME_H_ZJ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_P2P_CTL_USER_MME_H_CZ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_P2P_CTL_MMEIP_MME_H_NJ_CUR
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_P2P_CTL_MMEIP_MME_H_ZJ_CUR
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_P2P_CTL_MMEIP_MME_H_CZ_CUR
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_USER_COUNT_H_NJ_CUR
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_USER_COUNT_H_ZJ_CUR
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_USER_COUNT_H_CZ_CUR
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_L1_USER_COUNT_H_NJ_CUR
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_L1_USER_COUNT_H_ZJ_CUR
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_L1_USER_COUNT_H_CZ_CUR
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_L3_USER_COUNT_H_NJ_CUR
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_L3_USER_COUNT_H_ZJ_CUR
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_L3_USER_COUNT_H_CZ_CUR
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_DOMAIN_L3_H_NJ_0212
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_DOMAIN_L3_H_ZJ_0212
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_DOMAIN_L3_H_CZ_0212
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_SP_DOMAIN_L3_H_NJ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_SP_DOMAIN_L3_H_ZJ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_SP_DOMAIN_L3_H_CZ_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_USER_L3_H_06G_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_USER_H_06G_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_CELL_L3_H_06G_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_CELL_H_06G_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_SGSN_SGW_L3_H_06G_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_CITY_L3_H_06G_cur
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_TAC_L3_H_06G_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from DM_SE_P2P_TAC_H_06G_02
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_SP_DETAIL_H_06G_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from o_p2p_apptype_cell_s1u_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_APP_USER_COUNT_H
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_APP_SGSN_H
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_APP_CITY_H
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_APP_USER_H_0223
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_APP_CELL_H
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_APP_TAC_H
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_APP_SPIP_H
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_CELLTAC_H_10
 where day_key=20160523  group by hour_key 
go 
select hour_key,count(1) from O_SE_P2P_USER_CELL_H_cz_0223
 where day_key=20160523  group by hour_key 
go 

DW_SE_P2P_SGW_H_NJ_CUR

select count(1) from total_table

select distinct u8bearerstatus2 from no7gb.ltec1_s1mme_vvip_0207


---春节指标实时监测大屏
select distinct hour_key ,count(1) from O_SE_P2P_CITY_L3_4G_Q_NJ_CUR          where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_SP_DOMAIN_L3_4G_Q_NJ_CUR     where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_CITY_L1_4G_Q_NJ_CUR          where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_CITY_4G_Q_NJ_CUR             where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_SGW_4G_Q_NJ_CUR              where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_MME_4G_Q_NJ_CUR              where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_CELL_4G_Q_NJ_CUR             where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_IM_L3_4G_Q_NJ_CUR            where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_CITY_L3_4G_Q_ZJ_CUR          where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_SP_DOMAIN_L3_4G_Q_ZJ_CUR     where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_CITY_L1_4G_Q_ZJ_CUR          where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_CITY_4G_Q_ZJ_CUR             where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_SGW_4G_Q_ZJ_CUR              where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_MME_4G_Q_ZJ_CUR              where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_CELL_4G_Q_ZJ_CUR             where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_IM_L3_4G_Q_ZJ_CUR            where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_CITY_L3_4G_Q_CZ_CUR          where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_SP_DOMAIN_L3_4G_Q_CZ_CUR     where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_CITY_L1_4G_Q_CZ_CUR          where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_CITY_4G_Q_CZ_CUR             where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_SGW_4G_Q_CZ_CUR              where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_MME_4G_Q_CZ_CUR              where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_CELL_4G_Q_CZ_CUR             where day_key=20170207 group by hour_key
select distinct hour_key ,count(1) from O_SE_P2P_IM_L3_4G_Q_CZ_CUR            where day_key=20170207 group by hour_key


---实时用户监测
select count(*) from o_vip_http_q_nj
select count(*),start_time from o_vip_user_cell_hz_q_nj_06 group by start_time
select count(*),start_time from o_vip_user_hz_q_nj_06 group by start_time
select count(*),start_time from o_vip_cell_hz_q_nj_06 group by start_time
select count(*),start_time from o_vip_user_cell_zc_q_nj_06 group by start_time
select count(*),start_time from o_vip_city_hz_q_nj group by start_time
select count(*),start_time from o_vip_user_cell_hz_h_nj_06 group by start_time
select count(*),start_time from o_vip_user_hz_h_nj_06 group by start_time
select count(*),start_time from o_vip_cell_hz_h_nj_06 group by start_time
select count(*),start_time from o_vip_user_cell_zc_h_nj_06 group by start_time
select count(*),start_time from o_vip_city_hz_h_nj group by start_time


---问题定界（新）
select hour_key,count(1) from DW_USER_PROBLEM_xDR_H_0223           where day_key=20170207 group by hour_key
select hour_key,count(1) from DW_USER_PROBLEM_POINT_H_0223         where day_key=20170207 group by hour_key
select hour_key,count(1) from DW_PROBLEM_USER_TOTAL_H_0223         where day_key=20170207 group by hour_key
select hour_key,count(1) from DW_PROBLEM_USER_CELL_H_0223          where day_key=20170207 group by hour_key
select hour_key,count(1) from DW_PROBLEM_USER_APP_SP_H_0223        where day_key=20170207 group by hour_key
select hour_key,count(1) from DW_PROBLEM_USER_STAT_H_0223          where day_key=20170207 group by hour_key
select hour_key,count(1) from DW_PROBLEM_POINT_PROCESS_STAT_H_CUR where day_key=20170207 group by hour_key
select hour_key,count(1) from DW_PROBLEM_POINT_STAT_H_CUR         where day_key=20170207 group by hour_key
select hour_key,count(1) from DW_PROBLEM_PROCESS_STAT_H_CUR       where day_key=20170207 group by hour_key




---一图二表
select hour_key, hour_key,count(1) from DW_O_GB_TERMINAL_CELL_H_0210
where DAY_KEY=20150710 
group by hour_key
go
select hour_key, hour_key,count(1) from DW_O_GB_TM_I_AREA_NEW_H_0210
where DAY_KEY=20150710 
group by hour_key
go
select hour_key, hour_key,count(1) from DW_O_GB_TM_NETTYPE_AREA_NEW_H_0210
where DAY_KEY=20150710 
group by hour_key
go
select hour_key, hour_key,count(1) from DW_O_MC_TM_BRAND_NEW_H_0210
where DAY_KEY=20150710 
group by hour_key
go
select hour_key, hour_key,count(1) from DW_O_MC_TM_NETTYPE_NEW_H_0210
where DAY_KEY=20150710 
group by hour_key
go
select hour_key, hour_key,count(1) from DW_O_MC_TM_I_AREA_NEW_H_0210
where DAY_KEY=20150710 
group by hour_key
go


---MC接口
select  hour_key,count(1) from L_MC_VOICE_CALL_EVENT_02 where day_key=20151006
group by HOUR_KEY
go
select  hour_key,count(1) from L_MC_HO_EVENT_02 where day_key=20151006
group by HOUR_KEY
go
select  hour_key,count(1) from L_MC_ONOFF_EVENT_02 where day_key=20151006
group by HOUR_KEY
go
select  hour_key,count(1) from L_MC_LOCATION_EVENT_02 where day_key=20151006
group by HOUR_KEY
go
select  hour_key,count(1) from L_MC_SMS_EVENT_02 where day_key=20151006
group by HOUR_KEY
go
select  hour_key,count(1) from L_MC_ACCNET_EVENT_02 where day_key=20151006
group by HOUR_KEY
go



                                                                                                                 
  
 ---共享层-月核查
 select  hour_key,count(1) from o_se_p2p_user_m_2015  where month_key=201504 and year_key=2015
 go
 commit
 go
select  hour_key,count(1) from o_se_p2p_cell_m_2015  where month_key=201504 and year_key=2015

 go
 commit
 go
select  hour_key,count(1) from dm_se_p2p_city_l1_m_cur     where month_key=201504 and year_key=2015

 go
 commit
 go
select  hour_key,count(1) from dm_se_p2p_city_l3_m_cur     where month_key=201504 and year_key=2015

 go
 commit
 go
select  hour_key,count(1) from o_se_p2p_sgsn_sgw_l3_m_2015      where month_key=201504 and year_key=2015

 go
 commit
 go
select  hour_key,count(1) from dm_se_p2p_tac_m_cur         where month_key=201504 and year_key=2015

 go
 commit
 go
select  hour_key,count(1) from dm_se_p2p_tac_l1_m_cur      where month_key=201504 and year_key=2015

 go
 commit
 go
select  hour_key,count(1) from dm_se_p2p_tac_l3_m_cur      where month_key=201504 and year_key=2015

 go
 commit
 go
select  hour_key,count(1) from o_se_p2p_sp_detail_m_cur    where month_key=201504 and year_key=2015

 go
 commit
 go
select  hour_key,count(1) from dm_p2p_ctl_mmeip_mme_m_cur  where month_key=201504 and year_key=2015

 go
 commit
 go
select  hour_key,count(1) from o_p2p_ctl_cell_mme_m_cur    where month_key=201504 and year_key=2015

 go
 commit
 go
select  hour_key,count(1) from o_p2p_ctl_tac_mme_m_cur     where month_key=201504 and year_key=2015

 go
 commit
 go
select  hour_key,count(1) from o_p2p_ctl_user_mme_m_cur    where month_key=201504 and year_key=2015

 go
 commit
 go
select  hour_key,count(1) from o_se_p2p_dns_m_2015              where month_key=201504 and year_key=2015
 go
 commit
 go
select  hour_key,count(1) from O_SE_P2P_CELL_L3_M_2015           where month_key=201504 and year_key=2015
 go
 commit
 go
select  hour_key,count(1) from O_SE_P2P_USER_L3_M_2015           where month_key=201504 and year_key=2015
 go
 commit
 go


----维度信息表
select max(TIME_STAMP) from RMS_BTS
select max(TIME_STAMP) from RMS_CELL
select max(TIME_STAMP) from RMS_ENODEB
select max(TIME_STAMP) from RMS_EUTRANCELL
select max(TIME_STAMP) from RMS_NODEB
select max(TIME_STAMP) from RMS_UTRCELL

----家客订单
select ord_curry_time from OI_ZZ_OSM_INDIVIDUAL_ORDER where ORD_curry_time>'2015-10-05 00:00:00'


---网管性能指标
select substr(SCAN_START_TIME, 1,13) ,count(1) from lc_lte.p_lu_mme_mmefunction_hour
where SCAN_START_TIME>='2015-10-05 00:00:00'
group by substr(SCAN_START_TIME ,1,13)

---140库新版XDR
select distinct hour_key from L_4G_S1_C_MME_NJ_06       where day_key=20170207 
go
select distinct hour_key from L_4G_S1_C_S10S11_NJ_06    where day_key=20170207
go
select distinct hour_key from L_4G_S1_C_S6A_NJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_C_SGS_NJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_DNS_NJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_EMAIL_NJ_06     where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_FTP_NJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_HTTP_NJ_06      where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_IM_NJ_06        where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_S1U_NJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_RTSP_NJ_06      where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_VOIP_NJ_06      where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_P2P_NJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_MMS_NJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_C_MME_ZJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_C_S10S11_ZJ_06    where day_key=20170207
go
select distinct hour_key from L_4G_S1_C_S6A_ZJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_C_SGS_ZJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_DNS_ZJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_EMAIL_ZJ_06     where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_FTP_ZJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_HTTP_ZJ_06      where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_IM_ZJ_06        where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_S1U_ZJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_RTSP_ZJ_06      where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_VOIP_ZJ_06      where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_P2P_ZJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_MMS_ZJ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_C_MME_CZ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_C_S10S11_CZ_06    where day_key=20170207
go
select distinct hour_key from L_4G_S1_C_S6A_CZ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_C_SGS_CZ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_DNS_CZ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_EMAIL_CZ_06     where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_FTP_CZ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_HTTP_CZ_06      where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_IM_CZ_06        where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_S1U_CZ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_RTSP_CZ_06      where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_VOIP_CZ_06      where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_P2P_CZ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_U_MMS_CZ_06       where day_key=20170207
go
select distinct hour_key from L_4G_S1_C_MME_NT_22       where day_key=20160222 
go
select distinct hour_key from L_4G_S1_C_S10S11_NT_22    where day_key=20160222
go
select distinct hour_key from L_4G_S1_C_S6A_NT_22       where day_key=20160222
go
select distinct hour_key from L_4G_S1_U_DNS_NT_22       where day_key=20160222
go
select distinct hour_key from L_4G_S1_U_HTTP_NT_22      where day_key=20160222
go
select distinct hour_key from L_4G_S1_U_IM_NT_22        where day_key=20160222
go
select distinct hour_key from L_4G_S1_U_S1U_NT_22       where day_key=20160222
go
select distinct hour_key from L_4G_S1_C_MME_SQ_22       where day_key=20160222 
go
select distinct hour_key from L_4G_S1_C_S10S11_SQ_22    where day_key=20160222
go
select distinct hour_key from L_4G_S1_C_S6A_SQ_22       where day_key=20160222
go
select distinct hour_key from L_4G_S1_U_DNS_SQ_22       where day_key=20160222
go
select distinct hour_key from L_4G_S1_U_HTTP_SQ_22      where day_key=20160222
go
select distinct hour_key from L_4G_S1_U_IM_SQ_22        where day_key=20160222
go
select distinct hour_key from L_4G_S1_U_S1U_SQ_22       where day_key=20160222
go
select distinct hour_key from L_4G_S1_C_MME_YZ_22       where day_key=20160222 
go
select distinct hour_key from L_4G_S1_C_S10S11_YZ_22    where day_key=20160222
go
select distinct hour_key from L_4G_S1_C_S6A_YZ_22       where day_key=20160222
go
select distinct hour_key from L_4G_S1_U_DNS_YZ_22       where day_key=20160222
go
select distinct hour_key from L_4G_S1_U_HTTP_YZ_22      where day_key=20160222
go
select distinct hour_key from L_4G_S1_U_IM_YZ_22        where day_key=20160222
go
select distinct hour_key from L_4G_S1_U_S1U_YZ_22       where day_key=20160222
go

---号段
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_NJ_CUR  where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_ZJ_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_CZ_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_SQ_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_SZ_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_WX_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_NT_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_YZ_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_HA_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_XZ_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_YC_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_TZ_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_LYG_CUR  where day_key>=20160725



select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_NJ_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_ZJ_CUR  where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_CZ_CUR  where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_SQ_CUR  where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_SZ_CUR  where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_WX_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_NT_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_YZ_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_HA_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_XZ_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_YC_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_TZ_CUR where day_key>=20160725
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_LYG_CUR where day_key>=20160725   


---5分钟实时监测（集团上报集团）
select distinct QUARTER_KEY from O_SE_P2P_CITY_4G_F_cur where day_key=20160505
select distinct QUARTER_KEY from O_SE_P2P_SGW_NE_4G_F_cur where day_key=20160505
select distinct QUARTER_KEY from O_SE_P2P_CELL_4G_F_cur where day_key=20160505
select distinct QUARTER_KEY from O_SE_P2P_CITY_L1_4G_F_cur  where day_key=20160505
select distinct QUARTER_KEY from O_SE_P2P_CITY_L3_4G_F_cur where day_key=20160505


---区域人流量（小时）
select * from dw_dm_area_time_course_h_nt
select * from dw_dm_marea_time_course_h_nt
select * from dw_dm_marea_user_time_course_nt
select * from t_marea_cell_user_hour_nt
select * from t_hp_marea_user_monitor_nt
select * from t_hp_marea_stat_hour_nt
select * from t_hp_area_stat_hour_nt
select * from t_marea_cell_user_unique


---15分钟粒度数据（质差）
select count(*) from o_vip_http_q_sz
select count(*),start_time from o_vip_user_cell_hz_q_sz_02 group by start_time
select count(*),start_time from o_vip_user_hz_q_sz_02 group by start_time
select count(*),start_time from o_vip_user_cell_zc_q_sz_02 group by start_time
select count(*),start_time from o_vip_city_hz_q_sz group by start_time
select count(*),start_time from o_vip_user_cell_hz_h_sz_02 group by start_time
select count(*),start_time from o_vip_user_hz_h_sz_02 group by start_time
select count(*),start_time from o_vip_cell_hz_h_sz_02 group by start_time
select count(*),start_time from o_vip_user_cell_zc_h_sz_02 group by start_time
select count(*),start_time from o_vip_city_hz_h_sz group by start_time



----7地市用户面控制面小时流量
--用户面
select distinct hour_key from O_SE_P2P_USER_DETAIL_4G_H_NT_0204       where day_key=20170204 and city_code=513;
select distinct hour_key from O_SE_P2P_USER_DETAIL_4G_H_YZ_0204       where day_key=20170204 and city_code=514;
select distinct hour_key from O_SE_P2P_USER_DETAIL_4G_H_YC_0204       where day_key=20170204 and city_code=515;
select distinct hour_key from O_SE_P2P_USER_DETAIL_4G_H_XZ_0204       where day_key=20170204 and city_code=516;
select distinct hour_key from O_SE_P2P_USER_DETAIL_4G_H_HA_0204       where day_key=20170204 and city_code=517;
select distinct hour_key from O_SE_P2P_USER_DETAIL_4G_H_LYG_0204      where day_key=20170204 and city_code=518;
select distinct hour_key from O_SE_P2P_USER_DETAIL_4G_H_TZ_0204       where day_key=20170204 and city_code=523;

select distinct hour_key from dm_se_p2p_city_l3_h_NT_CUR      where day_key=20170204 and city_code=513;
select distinct hour_key from dm_se_p2p_city_l3_h_YZ_CUR      where day_key=20170204 and city_code=514;
select distinct hour_key from dm_se_p2p_city_l3_h_YC_CUR      where day_key=20170204 and city_code=515;
select distinct hour_key from dm_se_p2p_city_l3_h_XZ_CUR      where day_key=20170204 and city_code=516;
select distinct hour_key from dm_se_p2p_city_l3_h_HA_CUR      where day_key=20170204 and city_code=517;
select distinct hour_key from dm_se_p2p_city_l3_h_LYG_CUR     where day_key=20170204 and city_code=518;
select distinct hour_key from dm_se_p2p_city_l3_h_TZ_CUR      where day_key=20170204 and city_code=523;

select distinct hour_key from o_se_p2p_user_l3_h_NT_0204      where day_key=20170204 and city_code=513
select distinct hour_key from o_se_p2p_user_l3_h_YZ_0204      where day_key=20170204 and city_code=514
select distinct hour_key from o_se_p2p_user_l3_h_YC_0204      where day_key=20170204 and city_code=515
select distinct hour_key from o_se_p2p_user_l3_h_XZ_0204      where day_key=20170204 and city_code=516
select distinct hour_key from o_se_p2p_user_l3_h_HA_0204      where day_key=20170204 and city_code=517
select distinct hour_key from o_se_p2p_user_l3_h_LYG_0204     where day_key=20170204 and city_code=518
select distinct hour_key from o_se_p2p_user_l3_h_TZ_0204      where day_key=20170204 and city_code=523

select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_NT_CUR where day_key>=20160619
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_YZ_CUR where day_key>=20160619
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_HA_CUR where day_key>=20160619
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_XZ_CUR where day_key>=20160619
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_YC_CUR where day_key>=20160619
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_TZ_CUR where day_key>=20160619
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_DP_LYG_CUR  where day_key>=20160619

select distinct hour_key from dm_se_p2p_user_count_h_NT_cur      where day_key=20170204 and city_code=513
select distinct hour_key from dm_se_p2p_user_count_h_YZ_cur      where day_key=20170204 and city_code=514
select distinct hour_key from dm_se_p2p_user_count_h_YC_cur      where day_key=20170204 and city_code=515
select distinct hour_key from dm_se_p2p_user_count_h_XZ_cur      where day_key=20170204 and city_code=516
select distinct hour_key from dm_se_p2p_user_count_h_HA_cur      where day_key=20170204 and city_code=517
select distinct hour_key from dm_se_p2p_user_count_h_LYG_cur     where day_key=20170204 and city_code=518
select distinct hour_key from dm_se_p2p_user_count_h_TZ_cur      where day_key=20170204 and city_code=523

select distinct hour_key from dm_se_p2p_l1_user_count_h_NT_cur      where day_key=20170204 and city_code=513
select distinct hour_key from dm_se_p2p_l1_user_count_h_YZ_cur      where day_key=20170204 and city_code=514
select distinct hour_key from dm_se_p2p_l1_user_count_h_YC_cur      where day_key=20170204 and city_code=515
select distinct hour_key from dm_se_p2p_l1_user_count_h_XZ_cur      where day_key=20170204 and city_code=516
select distinct hour_key from dm_se_p2p_l1_user_count_h_HA_cur      where day_key=20170204 and city_code=517
select distinct hour_key from dm_se_p2p_l1_user_count_h_LYG_cur     where day_key=20170204 and city_code=518
select distinct hour_key from dm_se_p2p_l1_user_count_h_TZ_cur      where day_key=20170204 and city_code=523

select distinct hour_key from O_SE_P2P_USER_CELL_H_NT_0204      where day_key=20170204 and city_code=513
select distinct hour_key from O_SE_P2P_USER_CELL_H_YZ_0204      where day_key=20170204 and city_code=514
select distinct hour_key from O_SE_P2P_USER_CELL_H_YC_0204      where day_key=20170204 and city_code=515
select distinct hour_key from O_SE_P2P_USER_CELL_H_XZ_0204      where day_key=20170204 and city_code=516
select distinct hour_key from O_SE_P2P_USER_CELL_H_HA_0204      where day_key=20170204 and city_code=517
select distinct hour_key from O_SE_P2P_USER_CELL_H_LYG_0204     where day_key=20170204 and city_code=518
select distinct hour_key from O_SE_P2P_USER_CELL_H_TZ_0204      where day_key=20170204 and city_code=523

select distinct hour_key from dm_se_p2p_l3_user_count_h_NT_cur      where day_key=20170204 and city_code=513
select distinct hour_key from dm_se_p2p_l3_user_count_h_YZ_cur      where day_key=20170204 and city_code=514
select distinct hour_key from dm_se_p2p_l3_user_count_h_YC_cur      where day_key=20170204 and city_code=515
select distinct hour_key from dm_se_p2p_l3_user_count_h_XZ_cur      where day_key=20170204 and city_code=516
select distinct hour_key from dm_se_p2p_l3_user_count_h_HA_cur      where day_key=20170204 and city_code=517
select distinct hour_key from dm_se_p2p_l3_user_count_h_LYG_cur     where day_key=20170204 and city_code=518
select distinct hour_key from dm_se_p2p_l3_user_count_h_TZ_cur      where day_key=20170204 and city_code=523

select distinct hour_key from O_SE_P2P_CELLTAC_H_NT_02      where day_key=20170204 and city_code=513
select distinct hour_key from O_SE_P2P_CELLTAC_H_YZ_02      where day_key=20170204 and city_code=514
select distinct hour_key from O_SE_P2P_CELLTAC_H_YC_02      where day_key=20170204 and city_code=515
select distinct hour_key from O_SE_P2P_CELLTAC_H_XZ_02      where day_key=20170204 and city_code=516
select distinct hour_key from O_SE_P2P_CELLTAC_H_HA_02      where day_key=20170204 and city_code=517
select distinct hour_key from O_SE_P2P_CELLTAC_H_LYG_02     where day_key=20170204 and city_code=518
select distinct hour_key from O_SE_P2P_CELLTAC_H_TZ_02      where day_key=20170204 and city_code=523

select distinct hour_key from o_se_p2p_user_h_NT_0204      where day_key=20170204 and city_code=513
select distinct hour_key from o_se_p2p_user_h_YZ_0204      where day_key=20170204 and city_code=514
select distinct hour_key from o_se_p2p_user_h_YC_0204      where day_key=20170204 and city_code=515
select distinct hour_key from o_se_p2p_user_h_XZ_0204      where day_key=20170204 and city_code=516
select distinct hour_key from o_se_p2p_user_h_HA_0204      where day_key=20170204 and city_code=517
select distinct hour_key from o_se_p2p_user_h_LYG_0204     where day_key=20170204 and city_code=518
select distinct hour_key from o_se_p2p_user_h_TZ_0204      where day_key=20170204 and city_code=523

select distinct hour_key from dm_se_p2p_tac_l3_h_NT_02      where day_key=20170204 and city_code=513
select distinct hour_key from dm_se_p2p_tac_l3_h_YZ_02      where day_key=20170204 and city_code=514
select distinct hour_key from dm_se_p2p_tac_l3_h_YC_02      where day_key=20170204 and city_code=515
select distinct hour_key from dm_se_p2p_tac_l3_h_XZ_02      where day_key=20170204 and city_code=516
select distinct hour_key from dm_se_p2p_tac_l3_h_HA_02      where day_key=20170204 and city_code=517
select distinct hour_key from dm_se_p2p_tac_l3_h_LYG_02     where day_key=20170204 and city_code=518
select distinct hour_key from dm_se_p2p_tac_l3_h_TZ_02      where day_key=20170204 and city_code=523

select distinct hour_key from dm_se_p2p_tac_h_NT_02      where day_key=20170204 and city_code=513
select distinct hour_key from dm_se_p2p_tac_h_YZ_02      where day_key=20170204 and city_code=514
select distinct hour_key from dm_se_p2p_tac_h_YC_02      where day_key=20170204 and city_code=515
select distinct hour_key from dm_se_p2p_tac_h_XZ_02      where day_key=20170204 and city_code=516
select distinct hour_key from dm_se_p2p_tac_h_HA_02      where day_key=20170204 and city_code=517
select distinct hour_key from dm_se_p2p_tac_h_LYG_02     where day_key=20170204 and city_code=518
select distinct hour_key from dm_se_p2p_tac_h_TZ_02      where day_key=20170204 and city_code=523

select distinct hour_key from o_se_p2p_cell_l3_h_NT_02      where day_key=20170204 and city_code=513
select distinct hour_key from o_se_p2p_cell_l3_h_YZ_02      where day_key=20170204 and city_code=514
select distinct hour_key from o_se_p2p_cell_l3_h_YC_02      where day_key=20170204 and city_code=515
select distinct hour_key from o_se_p2p_cell_l3_h_XZ_02      where day_key=20170204 and city_code=516
select distinct hour_key from o_se_p2p_cell_l3_h_HA_02      where day_key=20170204 and city_code=517
select distinct hour_key from o_se_p2p_cell_l3_h_LYG_02     where day_key=20170204 and city_code=518
select distinct hour_key from o_se_p2p_cell_l3_h_TZ_02      where day_key=20170204 and city_code=523

select distinct hour_key from o_se_p2p_cell_h_NT_02      where day_key=20170204 and city_code=513
select distinct hour_key from o_se_p2p_cell_h_YZ_02      where day_key=20170204 and city_code=514
select distinct hour_key from o_se_p2p_cell_h_YC_02      where day_key=20170204 and city_code=515
select distinct hour_key from o_se_p2p_cell_h_XZ_02      where day_key=20170204 and city_code=516
select distinct hour_key from o_se_p2p_cell_h_HA_02      where day_key=20170204 and city_code=517
select distinct hour_key from o_se_p2p_cell_h_LYG_02     where day_key=20170204 and city_code=518
select distinct hour_key from o_se_p2p_cell_h_TZ_02      where day_key=20170204 and city_code=523

select distinct hour_key from O_SE_P2P_DNS_H_NT_02      where day_key=20170204 and city_code=513
select distinct hour_key from O_SE_P2P_DNS_H_YZ_02      where day_key=20170204 and city_code=514
select distinct hour_key from O_SE_P2P_DNS_H_YC_02      where day_key=20170204 and city_code=515
select distinct hour_key from O_SE_P2P_DNS_H_XZ_02      where day_key=20170204 and city_code=516
select distinct hour_key from O_SE_P2P_DNS_H_HA_02      where day_key=20170204 and city_code=517
select distinct hour_key from O_SE_P2P_DNS_H_LYG_02     where day_key=20170204 and city_code=518
select distinct hour_key from O_SE_P2P_DNS_H_TZ_02      where day_key=20170204 and city_code=523

select distinct hour_key from O_SE_P2P_SP_DOMAIN_L3_H_NT_0204      where day_key=20170204 and city_code=513
select distinct hour_key from O_SE_P2P_SP_DOMAIN_L3_H_YZ_0204      where day_key=20170204 and city_code=514
select distinct hour_key from O_SE_P2P_SP_DOMAIN_L3_H_YC_0204      where day_key=20170204 and city_code=515
select distinct hour_key from O_SE_P2P_SP_DOMAIN_L3_H_XZ_0204      where day_key=20170204 and city_code=516
select distinct hour_key from O_SE_P2P_SP_DOMAIN_L3_H_HA_0204      where day_key=20170204 and city_code=517
select distinct hour_key from O_SE_P2P_SP_DOMAIN_L3_H_LYG_0204     where day_key=20170204 and city_code=518
select distinct hour_key from O_SE_P2P_SP_DOMAIN_L3_H_TZ_0204      where day_key=20170204 and city_code=523

select distinct hour_key from o_se_p2p_sp_detail_h_NT_0204      where day_key=20170204 and city_code=513
select distinct hour_key from o_se_p2p_sp_detail_h_YZ_0204      where day_key=20170204 and city_code=514
select distinct hour_key from o_se_p2p_sp_detail_h_YC_0204      where day_key=20170204 and city_code=515
select distinct hour_key from o_se_p2p_sp_detail_h_XZ_0204      where day_key=20170204 and city_code=516
select distinct hour_key from o_se_p2p_sp_detail_h_HA_0204      where day_key=20170204 and city_code=517
select distinct hour_key from o_se_p2p_sp_detail_h_LYG_0204     where day_key=20170204 and city_code=518
select distinct hour_key from o_se_p2p_sp_detail_h_TZ_0204      where day_key=20170204 and city_code=523

select distinct hour_key from o_se_p2p_domain_l3_h_NT_0204      where day_key=20170204 and city_code=513
select distinct hour_key from o_se_p2p_domain_l3_h_YZ_0204      where day_key=20170204 and city_code=514
select distinct hour_key from o_se_p2p_domain_l3_h_YC_0204      where day_key=20170204 and city_code=515
select distinct hour_key from o_se_p2p_domain_l3_h_XZ_0204      where day_key=20170204 and city_code=516
select distinct hour_key from o_se_p2p_domain_l3_h_HA_0204      where day_key=20170204 and city_code=517
select distinct hour_key from o_se_p2p_domain_l3_h_LYG_0204     where day_key=20170204 and city_code=518
select distinct hour_key from o_se_p2p_domain_l3_h_TZ_0204      where day_key=20170204 and city_code=523

select distinct hour_key from O_SE_P2P_SGSN_SGW_L3_H_NT_02      where day_key=20170204 and city_code=513
select distinct hour_key from O_SE_P2P_SGSN_SGW_L3_H_YZ_02      where day_key=20170204 and city_code=514
select distinct hour_key from O_SE_P2P_SGSN_SGW_L3_H_YC_02      where day_key=20170204 and city_code=515
select distinct hour_key from O_SE_P2P_SGSN_SGW_L3_H_XZ_02      where day_key=20170204 and city_code=516
select distinct hour_key from O_SE_P2P_SGSN_SGW_L3_H_HA_02      where day_key=20170204 and city_code=517
select distinct hour_key from O_SE_P2P_SGSN_SGW_L3_H_LYG_02     where day_key=20170204 and city_code=518
select distinct hour_key from O_SE_P2P_SGSN_SGW_L3_H_TZ_02      where day_key=20170204 and city_code=523

---控制面
select distinct hour_key from O_P2P_CTL_USER_GPV2_H_NT_0222      where day_key=20170207 and city_code=513;
select distinct hour_key from O_P2P_CTL_USER_GPV2_H_YZ_0222      where day_key=20170207 and city_code=514;
select distinct hour_key from O_P2P_CTL_USER_GPV2_H_YC_0222      where day_key=20170207 and city_code=515;
select distinct hour_key from O_P2P_CTL_USER_GPV2_H_XZ_0222      where day_key=20170207 and city_code=516;
select distinct hour_key from O_P2P_CTL_USER_GPV2_H_HA_0222      where day_key=20170207 and city_code=517;
select distinct hour_key from O_P2P_CTL_USER_GPV2_H_LYG_0222     where day_key=20170207 and city_code=518;
select distinct hour_key from O_P2P_CTL_USER_GPV2_H_TZ_0222      where day_key=20170207 and city_code=523;

select distinct hour_key from DM_P2P_CTL_MMEIP_GPV2_H_NT_cur      where day_key=20170207 and city_code=513;      
select distinct hour_key from DM_P2P_CTL_MMEIP_GPV2_H_YZ_cur      where day_key=20170207 and city_code=514;      
select distinct hour_key from DM_P2P_CTL_MMEIP_GPV2_H_YC_cur      where day_key=20170207 and city_code=515;      
select distinct hour_key from DM_P2P_CTL_MMEIP_GPV2_H_XZ_cur      where day_key=20170207 and city_code=516;      
select distinct hour_key from DM_P2P_CTL_MMEIP_GPV2_H_HA_cur      where day_key=20170207 and city_code=517;      
select distinct hour_key from DM_P2P_CTL_MMEIP_GPV2_H_LYG_cur     where day_key=20170207 and city_code=518;      
select distinct hour_key from DM_P2P_CTL_MMEIP_GPV2_H_TZ_cur      where day_key=20170207 and city_code=523;

select distinct hour_key from O_P2P_CTL_TAC_GPV2_H_NT_02      where day_key=20170207 and city_code=513;
select distinct hour_key from O_P2P_CTL_TAC_GPV2_H_YZ_02      where day_key=20170207 and city_code=514;
select distinct hour_key from O_P2P_CTL_TAC_GPV2_H_YC_02      where day_key=20170207 and city_code=515;
select distinct hour_key from O_P2P_CTL_TAC_GPV2_H_XZ_02      where day_key=20170207 and city_code=516;
select distinct hour_key from O_P2P_CTL_TAC_GPV2_H_HA_02      where day_key=20170207 and city_code=517;
select distinct hour_key from O_P2P_CTL_TAC_GPV2_H_LYG_02     where day_key=20170207 and city_code=518;
select distinct hour_key from O_P2P_CTL_TAC_GPV2_H_TZ_02      where day_key=20170207 and city_code=523;

select distinct hour_key from O_P2P_CTL_MID_MME_H_NT_20      where day_key=20170207 and city_code=513;
select distinct hour_key from O_P2P_CTL_MID_MME_H_YZ_20      where day_key=20170207 and city_code=514;
select distinct hour_key from O_P2P_CTL_MID_MME_H_YC_20      where day_key=20170207 and city_code=515;
select distinct hour_key from O_P2P_CTL_MID_MME_H_XZ_20      where day_key=20170207 and city_code=516;
select distinct hour_key from O_P2P_CTL_MID_MME_H_HA_20      where day_key=20170207 and city_code=517;
select distinct hour_key from O_P2P_CTL_MID_MME_H_LYG_20     where day_key=20170207 and city_code=518;
select distinct hour_key from O_P2P_CTL_MID_MME_H_TZ_20      where day_key=20170207 and city_code=523;

select distinct hour_key from o_p2p_ctl_user_mme_h_NT_0222      where day_key=20170207 and city_code=513;
select distinct hour_key from o_p2p_ctl_user_mme_h_YZ_0222      where day_key=20170207 and city_code=514;
select distinct hour_key from o_p2p_ctl_user_mme_h_YC_0222      where day_key=20170207 and city_code=515;
select distinct hour_key from o_p2p_ctl_user_mme_h_XZ_0222      where day_key=20170207 and city_code=516;
select distinct hour_key from o_p2p_ctl_user_mme_h_HA_0222      where day_key=20170207 and city_code=517;
select distinct hour_key from o_p2p_ctl_user_mme_h_LYG_0222     where day_key=20170207 and city_code=518;
select distinct hour_key from o_p2p_ctl_user_mme_h_TZ_0222      where day_key=20170207 and city_code=523;

select distinct hour_key from o_p2p_ctl_cell_mme_h_NT_02      where day_key=20170207 and city_code=513;
select distinct hour_key from o_p2p_ctl_cell_mme_h_YZ_02      where day_key=20170207 and city_code=514;
select distinct hour_key from o_p2p_ctl_cell_mme_h_YC_02      where day_key=20170207 and city_code=515;
select distinct hour_key from o_p2p_ctl_cell_mme_h_XZ_02      where day_key=20170207 and city_code=516;
select distinct hour_key from o_p2p_ctl_cell_mme_h_HA_02      where day_key=20170207 and city_code=517;
select distinct hour_key from o_p2p_ctl_cell_mme_h_LYG_02     where day_key=20170207 and city_code=518;
select distinct hour_key from o_p2p_ctl_cell_mme_h_TZ_02      where day_key=20170207 and city_code=523;

select distinct hour_key from o_p2p_ctl_tac_mme_h_NT_02      where day_key=20170207 and city_code=513;
select distinct hour_key from o_p2p_ctl_tac_mme_h_YZ_02      where day_key=20170207 and city_code=514;
select distinct hour_key from o_p2p_ctl_tac_mme_h_YC_02      where day_key=20170207 and city_code=515;
select distinct hour_key from o_p2p_ctl_tac_mme_h_XZ_02      where day_key=20170207 and city_code=516;
select distinct hour_key from o_p2p_ctl_tac_mme_h_HA_02      where day_key=20170207 and city_code=517;
select distinct hour_key from o_p2p_ctl_tac_mme_h_LYG_02     where day_key=20170207 and city_code=518;
select distinct hour_key from o_p2p_ctl_tac_mme_h_TZ_02      where day_key=20170207 and city_code=523;

select distinct hour_key from dm_p2p_ctl_mmeip_mme_h_NT_cur      where day_key=20170207 and city_code=513;
select distinct hour_key from dm_p2p_ctl_mmeip_mme_h_YZ_cur      where day_key=20170207 and city_code=514;
select distinct hour_key from dm_p2p_ctl_mmeip_mme_h_YC_cur      where day_key=20170207 and city_code=515;
select distinct hour_key from dm_p2p_ctl_mmeip_mme_h_XZ_cur      where day_key=20170207 and city_code=516;
select distinct hour_key from dm_p2p_ctl_mmeip_mme_h_HA_cur      where day_key=20170207 and city_code=517;
select distinct hour_key from dm_p2p_ctl_mmeip_mme_h_LYG_cur     where day_key=20170207 and city_code=518;
select distinct hour_key from dm_p2p_ctl_mmeip_mme_h_TZ_cur      where day_key=20170207 and city_code=523;

select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_NT_CUR where day_key>=20160619
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_YZ_CUR where day_key>=20160619
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_HA_CUR where day_key>=20160619
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_XZ_CUR where day _key>=20160619
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_YC_CUR where day_key>=20160619
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_TZ_CUR where day_key>=20160619
select distinct day_key from DW_SE_P2P_SEGMENT_COUNT_CP_LYG_CUR where day_key>=20160619 

select distinct hour_key from O_P2P_CTL_USER_S6A_H_NT_0222      where day_key=20170207 and city_code=513;
select distinct hour_key from O_P2P_CTL_USER_S6A_H_YZ_0222      where day_key=20170207 and city_code=514;
select distinct hour_key from O_P2P_CTL_USER_S6A_H_YC_0222      where day_key=20170207 and city_code=515;
select distinct hour_key from O_P2P_CTL_USER_S6A_H_XZ_0222      where day_key=20170207 and city_code=516;
select distinct hour_key from O_P2P_CTL_USER_S6A_H_HA_0222      where day_key=20170207 and city_code=517;
select distinct hour_key from O_P2P_CTL_USER_S6A_H_LYG_0222     where day_key=20170207 and city_code=518;
select distinct hour_key from O_P2P_CTL_USER_S6A_H_TZ_0222      where day_key=20170207 and city_code=523;

select distinct hour_key from DM_P2P_CTL_MMEIP_S6A_H_NT_cur      where day_key=20170207 and city_code=513;
select distinct hour_key from DM_P2P_CTL_MMEIP_S6A_H_YZ_cur      where day_key=20170207 and city_code=514;
select distinct hour_key from DM_P2P_CTL_MMEIP_S6A_H_YC_cur      where day_key=20170207 and city_code=515;
select distinct hour_key from DM_P2P_CTL_MMEIP_S6A_H_XZ_cur      where day_key=20170207 and city_code=516;
select distinct hour_key from DM_P2P_CTL_MMEIP_S6A_H_HA_cur      where day_key=20170207 and city_code=517;
select distinct hour_key from DM_P2P_CTL_MMEIP_S6A_H_LYG_cur     where day_key=20170207 and city_code=518;
select distinct hour_key from DM_P2P_CTL_MMEIP_S6A_H_TZ_cur      where day_key=20170207 and city_code=523;

select distinct hour_key from O_P2P_CTL_TAC_S6A_H_NT_02      where day_key=20170207 and city_code=513;
select distinct hour_key from O_P2P_CTL_TAC_S6A_H_YZ_02      where day_key=20170207 and city_code=514;
select distinct hour_key from O_P2P_CTL_TAC_S6A_H_YC_02      where day_key=20170207 and city_code=515;
select distinct hour_key from O_P2P_CTL_TAC_S6A_H_XZ_02      where day_key=20170207 and city_code=516;
select distinct hour_key from O_P2P_CTL_TAC_S6A_H_HA_02      where day_key=20170207 and city_code=517;
select distinct hour_key from O_P2P_CTL_TAC_S6A_H_LYG_02     where day_key=20170207 and city_code=518;
select distinct hour_key from O_P2P_CTL_TAC_S6A_H_TZ_02      where day_key=20170207 and city_code=523;


---信令监测--关联回填率-信令IP匹配率
select distinct DAY_KEY,HOUR_KEY,CITY_ZHNAME from  T_ALARM_BACKFILL_RATE_STATS_H

select * from T_ALARM_BACKFILL_COL_H---无数据

---
select count(*) from o_vip_http_q_sz
select count(*),start_time from o_vip_user_cell_hz_q_sz_25 group by start_time      
select count(*),start_time from o_vip_user_hz_q_sz_25 group by start_time
select count(*),start_time from o_vip_user_cell_zc_q_sz_25 group by start_time
select count(*),start_time from o_vip_city_hz_q_sz group by start_time
select count(*),start_time from o_vip_user_cell_hz_h_sz_25 group by start_time
select count(*),start_time from o_vip_user_hz_h_sz_25 group by start_time
select count(*),start_time from o_vip_cell_hz_h_sz_25 group by start_time
select count(*),start_time from o_vip_user_cell_zc_h_sz_25 group by start_time
select count(*),start_time from o_vip_city_hz_h_sz group by start_time



select distinct hour_key from DM_SE_P2P_CITY_L3_H_SZ_CUR              where day_key=20170207 and city_code=512 
select distinct hour_key from O_SE_P2P_USER_L3_H_SZ_0223              where day_key=20170207 and city_code=512 
select distinct hour_key from DM_SE_P2P_USER_COUNT_H_SZ_CUR           where day_key=20170207 and city_code=512 
select distinct hour_key from DM_SE_P2P_L1_USER_COUNT_H_SZ_CUR        where day_key=20170207 and city_code=512 
select distinct hour_key from O_SE_P2P_USER_CELL_H_SZ_0223            where day_key=20170207 and city_code=512 
select distinct hour_key from DM_SE_P2P_L3_USER_COUNT_H_SZ_CUR        where day_key=20170207 and city_code=512 
select distinct hour_key from O_SE_P2P_CELLTAC_H_SZ_02                where day_key=20170207 and city_code=512 
select distinct hour_key from O_SE_P2P_USER_H_SZ_0223                 where day_key=20170207 and city_code=512 
select distinct hour_key from DM_SE_P2P_TAC_L3_H_SZ_02                where day_key=20170207 and city_code=512 
select distinct hour_key from DM_SE_P2P_TAC_H_SZ_02                   where day_key=20170207 and city_code=512 
select distinct hour_key from O_SE_P2P_CELL_L3_H_SZ_02                where day_key=20170207 and city_code=512 
select distinct hour_key from O_SE_P2P_DNS_H_SZ_02                    where day_key=20170207 and city_code=512 
select distinct hour_key from O_SE_P2P_SP_DOMAIN_L3_H_SZ_0223         where day_key=20170207 and city_code=512 
select distinct hour_key from O_SE_P2P_SP_DETAIL_H_SZ_0223            where day_key=20170207 and city_code=512 
select distinct hour_key from O_SE_P2P_DOMAIN_L3_H_SZ_0223            where day_key=20170207 and city_code=512 
select distinct hour_key from O_SE_P2P_SGSN_SGW_L3_H_SZ_02            where day_key=20170207 and city_code=512 
select distinct hour_key from DW_SE_P2P_SGW_H_SZ_CUR                  where day_key=20170207 and city_code=512 
select distinct hour_key from O_SE_P2P_CELL_SGW_H_SZ_02               where day_key=20170207 and city_code=512 
select distinct hour_key from O_P2P_CTL_USER_MME_H_SZ_0223            where day_key=20170207 and city_code=512 
select distinct hour_key from O_P2P_CTL_TAC_MME_H_SZ_02               where day_key=20170207 and city_code=512 
select distinct hour_key from DM_P2P_CTL_MMEIP_MME_H_SZ_CUR           where day_key=20170207 and city_code=512 
select distinct hour_key from DM_P2P_CTL_MMEIP_S6A_H_SZ_CUR           where day_key=20170207 and city_code=512 
select distinct hour_key from DM_P2P_CTL_MMEIP_GPV2_H_SZ_CUR          where day_key=20170207 and city_code=512 
select distinct hour_key from O_P2P_CTL_USER_GPV2_H_SZ_0223           where day_key=20170207 and city_code=512 
select distinct hour_key from O_P2P_CTL_TAC_GPV2_H_SZ_02              where day_key=20170207 and city_code=512 
select distinct hour_key from O_P2P_CTL_USER_S6A_H_SZ_0223            where day_key=20170207 and city_code=512 
select distinct hour_key from O_P2P_CTL_TAC_S6A_H_SZ_02               where day_key=20170207 and city_code=512 
select distinct hour_key from O_SE_P2P_CELL_H_SZ_02                where day_key=20170207 and city_code=512 

select count(1) from O_SE_P2P_CELLTAC_L1_D_nj_02 where day_key=20170207
select count(1) from O_SE_P2P_CELLTAC_L1_D_sz_02 where day_key=20170207
select count(1) from O_SE_P2P_CELLTAC_L1_D_wx_02 where day_key=20170207
select count(1) from O_SE_P2P_CELLTAC_L1_D_zj_02 where day_key=20170207
select count(1) from O_SE_P2P_CELLTAC_L1_D_cz_02 where day_key=20170207
select count(1) from O_SE_P2P_CELLTAC_L1_D_sq_02 where day_key=20170207
select count(1) from O_SE_P2P_CELLTAC_L1_D_nt_02 where day_key=20170207
select count(1) from O_SE_P2P_CELLTAC_L1_D_yz_02 where day_key=20170207
select count(1) from O_SE_P2P_CELLTAC_L1_D_yc_02 where day_key=20170207
select count(1) from O_SE_P2P_CELLTAC_L1_D_xz_02 where day_key=20170207
select count(1) from O_SE_P2P_CELLTAC_L1_D_ha_02 where day_key=20170207
select count(1) from O_SE_P2P_CELLTAC_L1_D_lyg_02 where day_key=20170207
select count(1) from O_SE_P2P_CELLTAC_L1_D_tz_02 where day_key=20170207


select distinct month_key from swxt.T_USER_BEHAVIOR_LABEL
select distinct month_key from swxt.T_USER_FAVOER_WHOLEAPP
select distinct month_key from swxt.T_USER_FAVOER_APP
select distinct month_key from swxt.T_USER_TIME_LABEL
select distinct month_key from swxt.T_APP_LABEL_AVERAGE
select distinct month_key from swxt.T_PACKAGE_LABEL
select distinct month_key from swxt.T_BRAND_LABEL
select distinct month_key from swxt.T_TAC_MODEL_LABEL
select distinct month_key from swxt.T_USER_LOCATION_LABEL			
select distinct month_key from swxt.T_USER_CZ_CELL
select distinct month_key from swxt.T_USER_SATISFACTION_LABEL
select distinct month_key from swxt.t_qd_lte_user_gis
select distinct month_key from swxt.user_cz_lte_signalling


,CASE WHEN STATUS_OPEN>0 AND STATUS_CLOSE=0 THEN 'OPEN'
     WHEN STATUS_OPEN=0 AND STATUS_CLOSE>0 THEN 'CLOSED'
     WHEN STATUS_OPEN=0 AND STATUS_CLOSE=0 THEN 'UNKWOMN'
     WHEN STATUS_OPEN>0 AND STATUS_CLOSE>0 THEN 'OPEN_CLOSED'


     