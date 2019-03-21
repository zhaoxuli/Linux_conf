#!/bin/bash
PARA_CNT=$#
TRASH_DIR="~/.trash/"

for i in $*; do
    cur_str=$i
    temp=${cur_str//'+'/'/'}
    final=${temp//$TRASH_DIR/' '}
    echo Recover to: $final
    mv $i $final
done

