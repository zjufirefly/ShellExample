# /bin/bash

# 输入参数 aaa "bbb ccc" 测试

# 命令行参数个数
printf "\$#=%d\n" $#

# 当前脚本名称
printf "\$0=%s\n" $0

# 第一个参数
printf "\$1=%s\n" $1


# $*以"arg1 arg2 arg3..."形式返回
# $@以"arg1" "arg2" "arg3"...形式返回
printf "\$*=%s\n" "$*"
printf "\$@=%s\n" "$@"

array=($*)
printf "\${#(\$*)}=%d\n" ${#array[*]} 

array=("$*")
printf "\${#(\"\$*\")}=%d\n" ${#array[*]} 

array=($@)
printf "\${#(\$@)}=%d\n" ${#array[@]} 

array=("$@")
printf "\${#(\"\$@\")}=%d\n" ${#array[@]} 

# 保存之前执行命令的最后一个参数
printf "\$_=%s\n" $_

