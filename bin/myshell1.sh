#/bin/bash
PATH=$PATH
export PATH

echo "程序会用touch命令自动创建三个文件"

read -p "请输入文件名的前缀:" tempName

date1=$(date +%Y%m%d)
date2=$(date -d "+1 day" +%Y%m%d)
date3=$(date -d "+2 day" +%Y%m%d)

cd sql

touch ${tempName}${date1}.sql
touch ${tempName}${date2}.sql
touch ${tempName}${date3}.sql
