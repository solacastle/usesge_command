LOAD TABLE dw.rms_mscid_city
( 
net_type                      ',',
province                      ',',
city_name                     ',',
area_name                     ',',
area_code                     ',',
msc_name                      ',',
msc_id                        ',',
sign_point_code               ',',
scp_vc_id                     ',',
number_reply_code             ',',
remark                        ',',
start_time                    '\x0a'
)
USING FILE  '/share/group_file/volte_load/rms_mscid_city.csv'
QUOTES OFF
ESCAPES OFF
skip 1; 
commit;
