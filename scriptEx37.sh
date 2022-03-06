#!/bin/bash

echo "Enter File"
read file

length=$(echo -n "$file" | wc -c)
FILE="$HOME/sample"
FILE="$FILE${file:$(($length-4))}"
awk '!x[$0]++' $file > $FILE
cp $FILE $file
rm $FILE
