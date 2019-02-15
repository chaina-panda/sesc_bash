#!/bin/bash
make build
for var in "1.txt" "2.txt" "3.txt" "4.txt" "5.txt" 
do
touch input.txt
head -1 $var > input.txt
x=`make run < input.txt`
y=`tail -1 $var`
rm input.txt
if ($x!=$y)
then
exit 1
fi
done
exit 0