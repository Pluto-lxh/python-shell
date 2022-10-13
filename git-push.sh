#!/bin/bash

#给出一个默认的项目路径
path="/f/CodeDAO测试/文件夹4/autotest"
 
 
#先进入项目当中
cd $path
pwd
 
echo "####### 进入自己的项目 #######"
ls

echo "####### 修改文件内容并提交 #######"
for((i=1;i<=5;i++))
do
echo $i >> 1.txt
git add . 
sleep 1s
git commit -m "第 $i 次提交"
done

git log --oneline --graph

sleep 1s
 
echo "####### 开始推送 #######"
git push origin master
echo "####### 推送成功 #######"