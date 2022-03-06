#!/bin/bash

echo "Enter File"
read VAR

length=$(echo -n "$VAR" | wc -c)
FILE="$HOME/sample"
FILE="$FILE${VAR:$(($length-4))}"
awk '!x[$0]++' $VAR > $FILE
cp $FILE $VAR
rm $FILE
