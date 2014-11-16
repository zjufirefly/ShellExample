#! /bin/bash

array[0]=0
array[2]=2
array[16]=16

# 输出数组元素
# result:16
echo ${array[2]}

# 输出数组元素个数
# result:3
echo ${#array[@]}

# 字符串作为key
# result:aaa
array[aaa]=aaa
echo ${array[aaa]}

echo

# result:
# zzz
# bbb
# ccc
# ddd
# eee
array=("zzz" "bbb ccc" "ddd eee")
for value in ${array[@]}
do
    echo $value
done

echo

# result:
# zzz
# bbb ccc
# ddd eee
array=("zzz" "bbb ccc" "ddd eee")
for value in "${array[@]}"
do
    echo $value
done

echo

# result:
# zzz
# bbb
# ccc
# ddd
# eee
array=("zzz" "bbb ccc" "ddd eee")
for value in ${array[*]}
do
    echo $value
done

echo

# result:
# zzz bbb ccc ddd eee
array=("zzz" "bbb ccc" "ddd eee")
for value in "${array[*]}"
do
    echo $value
done

echo

# 获取数组部分元素
# result:
# bbb
# ccc
# ddd
# eee
array=("zzz" "bbb ccc" "ddd eee")
for value in ${array[@]:1:2}
do
    echo $value
done

echo

# result
# bbb ccc
# ddd eee
array=("zzz" "bbb ccc" "ddd eee")
for value in "${array[@]:1:2}"
do
    echo $value
done

echo

# result:
# bbb
# ccc
# ddd
# eee
array=("zzz" "bbb ccc" "ddd eee")
for value in ${array[*]:1:2}
do
    echo $value
done

echo

# result:
# bbb ccc ddd eee
array=("zzz" "bbb ccc" "ddd eee")
for value in "${array[*]:1:2}"
do
    echo $value
done

echo


# 数据替换
# result
# zzz fff ccc ddd eee
# zzz fff ccc ddd eee
# bbb ccc
# ddd eee
array=("zzz" "bbb ccc" "ddd eee")
array=${array[@]/bbb/fff}
echo $array
for value in "${array[@]}"
do
    echo $value
done







