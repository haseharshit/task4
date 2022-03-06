#!/bin/bash

function ranPass(){

declare -a PASSCHAR #decalaring array

for (( b=0;b<6;b++ ))
do
   if [ $b -gt 2 ]  #making case 0 atleast twice for digit
   then
       case=$((RANDOM%3))
   else
       case=0
   fi
   
   #case will decide for the charater to be digit, small alphabet or capital alphabet
   
   if [ $case -eq 0 ] 
   then
       temp=$(( $((RANDOM%10)) + 48 )) #digit ASCII value 48-57
   elif [ $case -eq 1 ]
   then
       temp=$(( $((RANDOM%26)) + 65 )) #capital alphabet va;ue 65-90
   else
       temp=$(( $((RANDOM%26)) + 97 )) #small alphabet value 97-122
   fi
   
   PASS=$(printf "\x$(printf %x $temp)") #converting ASCII value to character
   PASSCHAR+=($PASS)

done

   #suffling digit at 0,1
   for (( b=0;b<2;b++ ))
   do
       c=$((RANDOM%6))
       temp=${PASSCHAR[b]}
       PASSCHAR[b]=${PASSCHAR[c]}
       PASSCHAR[c]=$temp
   done
local PASSWORD=""
for (( b=0;b<6;b++ ))
do
PASSWORD="$PASSWORD${PASSCHAR[b]}"
done
echo "$PASSWORD"
}

echo -n "Enter the number of passwords required: "
read count

echo "Folowing are $count passwords randomly generated having at least two digit"

for (( a=1;a<=count;a++ ))
do
val=$(ranPass)
echo "$a. $val"
done
