#!/bin/bash
echo "Enter File"
read FILE

chars=$(wc -c < $FILE)
words=$(wc -w < $FILE)
lines=$(wc -l < $FILE)

echo "The number of charcters,words and lines in $FILE are :"
echo "Characters: $chars"
echo "Words: $words"
echo "Lines: $lines"
