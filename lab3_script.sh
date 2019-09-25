#!/bin/bash
# Authors : Daniel Camarena
# Date: 9/20/2019

#Problem 1 Code:
#Prompting user to enter filename, then an expression to search in file

echo "Enter file name:"
read file_name
echo "Enter Expression:"
read expression

#Problem 2 Code:
#Using grep to search files with given expression
grep $expression $file_name

#Problem 3 Code:
#using grep with -c to return the number of phone numbers in filename
grep -c "^...-...-....$" $file_name

#problem 4 Code
#using grep -c to get the count of any email
grep -c "^[a-zA-Z0-9]\+@[a-zA-Z0-9]\+\.[a-z]\{2,\}" $file_name
#using grep -o to get only the matching 303 numbers
grep -0 "^303-...-....$" $file_name
#using grep to find any geocities emails and creating a file listing them
grep  "^[a-zA-Z0-9]\+@geocities.com" $file_name >> email_results.txt

