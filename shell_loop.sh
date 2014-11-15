#! /bin/bash

# 带列表的for循环
for i in 1 2 3 4
do
    echo $i
done

echo

for index in {0..4}
do
    echo $index
done

echo

for i in {0..8..2}
do
    echo $i
done

echo

for file in $(ls)
do
    echo $file
done

echo

for file in *
do
    echo $file
done

echo

# c风格的for循环
for ((i=0;i<4;i++))
do
    echo $i
done

echo

# for循环处理数组
array=(1 2 3 4)
for num in ${array[*]}
do
    echo $num
done

echo

# until
num=1
until [[ num -gt 4 ]]
do
    echo $num
    ((num++))
done

echo

# while
num=1
while [[ num -lt 5 ]]
do
    echo $num
    let "num++"
done
