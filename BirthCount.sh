#!/bin/bash +x

declare -A birthCount

declare -A monthYrDict

for((i=0; i<24; i++))
do
birthCount[$i]=0
done


for((i=0;i<50;i++))
do
bornRandom=$((RANDOM%24))

echo $bornRandom


currVal=${birthCount[$bornRandom]}
currVal=$((currVal+1))
birthCount[$bornRandom]=$currVal

done

echo ${birthCount[@]} 

echo ${!birthCount[@]}

for((i=0; i<24; i++))
do
echo "no of people born in $i month and year is" ${birthCount[$i]}

done

for((i=0; i<12;i++))
do
j=$((i+12))

echo "no of people born in $i month is" $((${birthcount[$i]}+${birthCount[$j]}))

done
