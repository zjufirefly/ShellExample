#! /bin/bash

array[0]=0
array[2]=2
array[16]=16

# 输出数组元素
echo ${array[2]}

# 输出数组元素个数
echo ${#array[@]}

# 字符串作为key
array[aaa]=aaa
echo ${array[aaa]}
