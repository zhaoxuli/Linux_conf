#!/bin/bash
PARA_CNT=$#
TRASH_DIR="~/.trash/"

for i in $*; do
    cur_str=$PWD'+'`basename $i`
    final=${cur_str//'/'/'+'}
    #echo $final
    mv $i $TRASH_DIR$final
done

