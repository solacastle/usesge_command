ETL单台服务器版本环境重启：在执行端执行
V3版： DDN库都是V3版
exit
sh /dataload/Inspur/apps/tools-etl_v3/db2db_manager/bin/stop.sh
sh /dataload/Inspur/apps/tools-etl_v3/dbservice_1/bin/stop.sh

检查进程已关闭
clear;ps -ef |grep java

exit
sh /dataload/Inspur/apps/tools-etl_v3/dbservice_1/bin/startup.sh
sh /dataload/Inspur/apps/tools-etl_v3/db2db_manager/bin/startup.sh

检查进程已开启，共2个
ps -ef |grep java

检查ETL运行日志：在执行端执行
tail -f /dataload/Inspur/apps/tools-etl_v3/dbservice_1/logs/db2db.log


V1版:

sh /dataload/Inspur/apps/tools-etl/db2db_manager/bin/stop.sh
sh /dataload/Inspur/apps/tools-etl/dbservice_1/bin/stop.sh

检查进程已关闭
ps -ef |grep java

exit
sh /dataload/Inspur/apps/tools-etl/dbservice_1/bin/startup.sh
sh /dataload/Inspur/apps/tools-etl/db2db_manager/bin/startup.sh

检查进程已开启，共2个
ps -ef |grep java

检查ETL运行日志：在执行端执行
tail -f /dataload/Inspur/apps/tools-etl/dbservice_1/logs/db2db.log


V5版：

sh /dataload/Inspur/apps/tools-etl_v5/db2db_mini/bin/shutdown.sh

检查进程已关闭
ps -ef |grep java

exit
sh /dataload/Inspur/apps/tools-etl_v5/db2db_mini/bin/startup.sh

检查进程已开启，共2个
ps -ef |grep java

检查ETL运行日志：在执行端执行
tail -f /dataload/Inspur/apps/tools-etl_v5/db2db_mini/logs/db2db.log

