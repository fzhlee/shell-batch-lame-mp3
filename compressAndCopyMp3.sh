# 批量压缩mp3文件，并保存压缩后的文件
# Author:www.coolketang.com
# Date: 2019-03-28

resource="chromeApp"

mp3Path="/Users/jerry/Documents/Projects/InteractiveWeb所有音频/"$resource"/*"

for file in $mp3Path
do
	path="/Users/jerry/Documents/Projects/InteractiveWeb所有音频/"$resource"/"${file##*/}"/*"
	targetPath="/Users/jerry/Documents/Projects/InteractiveWeb所有资源/"$resource"/"${file##*/}"/"
    for mp3File in $path
	do
	    if test -f $mp3File
	    then
	        lame -b 32 $mp3File $targetPath${mp3File##*/}
	    fi
	done
done 


echo "转换完成！"