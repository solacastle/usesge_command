查询dw用户下的所有表：
select * from
(select table_name,creator from systable) a,
(select user_id,user_name from sysuserperm) b
where a.creator=b.user_id and b.user_name='dw'


查询swxt用户下的所有表：
select * from
(select table_name,creator from systable) a,
(select user_id,user_name from sysuserperm) b
where a.creator=b.user_id and b.user_name='SWXT'