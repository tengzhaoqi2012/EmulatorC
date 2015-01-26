#/bin/bash
function createFile(){
	if [ ! -f $1 ]; then
		touch $1
	else
		echo "文件$1已存在"
	fi
}

PATH=$PATH
export PATH

echo "程序会用touch命令自动创建三个文件"

read -p "请输入文件名的前缀:" tempName

date1=$(date +%Y%m%d)
date2=$(date -d "+1 day" +%Y%m%d)
date3=$(date -d "+2 day" +%Y%m%d)

cd sql

##创建三个sql脚本文件
createFile ${tempName}${date1}.sql;
createFile ${tempName}${date2}.sql;
createFile ${tempName}${date3}.sql;

