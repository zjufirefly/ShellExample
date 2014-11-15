#! /bin/bash

function print_date()
{
    echo `date`
    return 1
}

date_value=$(print_date)

echo $date_value
echo $?
