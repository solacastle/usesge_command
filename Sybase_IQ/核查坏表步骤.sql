核查坏表步骤
登录数据库10.40.96.134--dba

1. 检查表是否能count(1)正常查出数据量：
例： select count(1) from dw.DW_SE_FAIL_MME_USER_H_CZ_0223
如果报错说明是坏表并记录表名

2. 如果步骤1正常，不一定不是坏表，可以用下面方法继续核查，注意：数据量过大不能使用此方法(<=5000万)
sp_iqcheckdb 'check table dw.DW_SE_FAIL_MME_USER_H_CZ_0223' 
检查输出结果中DBCC Status项，如果是No Errors Detected则不是坏表,如果是error则是坏表

3. 记录核查结果

