#!/bin/bash
 
START_TIME=`date +%s`
echo START_TIME
 
for ((I=1;I<=10;I++))
do
    {
        echo "${I}: success" ; sleep 2
    }&
done
wait
 
STOP_TIME=`date +%s`
echo $START_TIME
echo $STOP_TIME
echo "TIME: $(expr ${STOP_TIME} - ${START_TIME})"