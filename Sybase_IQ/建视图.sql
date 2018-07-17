
CREATE VIEW dw.DW_SE_SPECIAL_USER_NUMS_H as 
select * from DW_SE_SPECIAL_USER_NUMS_H_NJ
union all
select * from DW_SE_SPECIAL_USER_NUMS_H_SZ
union all
select * from DW_SE_SPECIAL_USER_NUMS_H_WX
union all
select * from DW_SE_SPECIAL_USER_NUMS_H_CZ
union all
select * from DW_SE_SPECIAL_USER_NUMS_H_ZJ
union all
select * from DW_SE_SPECIAL_USER_NUMS_H_SQ
union all
select * from DW_SE_SPECIAL_USER_NUMS_H_HA
union all
select * from DW_SE_SPECIAL_USER_NUMS_H_YC
union all
select * from DW_SE_SPECIAL_USER_NUMS_H_YZ
union all
select * from DW_SE_SPECIAL_USER_NUMS_H_TZ
union all
select * from DW_SE_SPECIAL_USER_NUMS_H_LYG
union all
select * from DW_SE_SPECIAL_USER_NUMS_H_NT
union all
select * from DW_SE_SPECIAL_USER_NUMS_H_XZ
GO
