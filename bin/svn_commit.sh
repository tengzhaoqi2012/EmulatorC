#/bin/bash
echo $1
echo $2
msg="提交日期为"$(date +%Y年%m月%d日)
if [ ! -z $1 ]; then
	msg = $1
fi 
svn commit -m "$msg"
