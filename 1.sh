
#!/bin/bash



# 获取，重命名图片
# =================1.需要修改路径=====================
max_file=$(ls -v /E/Github/ccfps/java | tail -n 1)

# =================================================
echo "图床的最后一张图片：$max_file"
counter=${max_file:1:2} # 获取最后一个编号
counter=$((counter + 1)) # 从 +1 号开始命名
OLDIFS="$IFS"  #备份旧的IFS变量
IFS=$'\n'   #修改分隔符为换行符，因为图片名有空格
# 批量命名
cd /c/Users/jc/Desktop/java
for file in $(ls -v ./ | grep ^屏)
do
    mv "$file" "0$counter.png"
    counter=$((counter + 1))
done
counter=$((counter - 1))
IFS="$OLDIFS"  #还原IFS变量
echo "图片重命名完成，最后一张图片时是：0$counter.png"



# 移动文件
echo "正在移动文件"
# =================2.需要修改路径=====================
# 1. 将所有0开头的图片移动到另一个目录下
find /c/Users/jc/Desktop/java -maxdepth 1 -name "0*" -type f -exec mv {} /E/Github/ccfps/java | tail \;
# =================================================


#上传到服务器
echo "开始上传到服务器"
sleep 1
cd /E/Github/ccfps
git add .
git commit -m "Updata Image"
git push


