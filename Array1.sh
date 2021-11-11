#!/bin/bash +x

arr=unset
counter=0
for(( i=1; i<=100; i++ ))
do
if [ $((i%11)) -eq 0 ]
then
arr[((counter++))]=$i
fi
done

echo ${arr[@]}
