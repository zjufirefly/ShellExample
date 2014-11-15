#! /bin/bash

'''
'''
while getopts "a:b:c" opt
do
    case $opt in
        a)
            echo "a's argument is $OPTARG"
            ;;
        b)
            echo "b's argument is $OPTARG"
            ;;
        c)
            echo "c"
            ;;
        ?)
            echo "unknow argument"
            ;;
        :)
            echo "no arg for opt $OPTARG"
            ;;
        *)
            echo "unkonw error"
            ;;
    esac
done
