## 第一个仓库

git init 创建一个本地仓库    (空文件夹里面)

git remote   add 本地仓库名   git@github.com:jjccfps/ccfps.git    (远程仓库地址)  本地仓库连接远程仓库

get remote  -v  查看本地仓库连接的远程仓库

git clone  git@github.com:jjccfps/ccfps.git  将远程仓库克隆到本地仓库

git add  更新本地仓库的文件

git commit -m "更新文件" 

git push  本地仓库名 远程仓库名  将本地仓库更新的到远程仓库

git pull    本地仓库名 远程仓库名   将远程仓库更新到本地仓库





如果本地仓库不是克隆的而是自己创建的不能从远程仓库下拉数据  

解决方法  在pull后面——allow-unrelate-histories


