#!/bin/bash

echo "Enter file"
read FILE

count=$(awk '$0!~/[aeiou]/{count++}END{ print count }' $FILE)
echo "No of lines not having vowels: $count "

