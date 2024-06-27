#!/bin/bash


FILES=$@

echo "Argumnts: $FILES"

OVERALL_LETTER_SUM=0

for FILE in $FILES; do
	FILE_LETTERS=$(echo -n $(cat $FILE) | wc -c)
	let OVERALL_LETTER_SUM+=FILE_LETTERS
done;
echo "Sum of letters in both files is $OVERALL_LETTER_SUM" 

exit 0
