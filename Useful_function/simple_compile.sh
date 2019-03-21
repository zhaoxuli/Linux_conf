#!/bin/bash
PAR_CNT=$*
if  [  ${PAR_CNT##*.} != cpp ];then
        gcc $PAR_CNT -o  ${PAR_CNT%%.*}
        if [ $? != 1 ];then
                echo  Compile Successed, Good job !!
               ./${PAR_CNT%%.*}
               rm ./${PAR_CNT%%.*}
        fi
else
        g++ $PAR_CNT -o  ${PAR_CNT%%.*}
        if [ $? != 1 ];then
                echo  Compile Successed, Good job !!
                ./${PAR_CNT%%.*}
               rm ./${PAR_CNT%%.*}
        fi
fi



