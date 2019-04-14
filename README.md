# shell-batch-lame-mp3
# 使用sh文件和lame工具批量压缩mp3

# 批量压缩mp3文件，并保存压缩后的文件
# Author:www.coolketang.com
# Date: 2019-03-28

resource="chromeApp"#文件夹名称

#所有mp3文件夹
mp3Path="/Users/jerry/Documents/Projects/InteractiveWeb所有音频/"$resource"/*"

#遍历所有mp3文件夹
for file in $mp3Path
do
  #子文件夹下的所有mp3
	path="/Users/jerry/Documents/Projects/InteractiveWeb所有音频/"$resource"/"${file##*/}"/*"
  
  #压缩后的mp3存储目录
	targetPath="/Users/jerry/Documents/Projects/InteractiveWeb所有资源/"$resource"/"${file##*/}"/"
  
  #遍历所有mp3文件
  for mp3File in $path
	do
	    if test -f $mp3File#是否为文件
	    then
          #压缩mp3文件，${mp3File##*/}表示保留文件的名称和后缀
	        lame -b 32 $mp3File $targetPath${mp3File##*/}
	    fi
	done
done 


echo "转换完成！"
