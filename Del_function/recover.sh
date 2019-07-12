#!/bin/bash
PARA_CNT=$#
TRASH_DIR="/mnt/hdfs-data-3/data/zhaoxu01.li/.trash/"

for i in $*; do
    cur_str=$i
    temp=${cur_str//'+'/'/'}
    final=${temp//$TRASH_DIR/' '}
    echo Recover to: $final
    mv $i $final
done

