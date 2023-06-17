#!/bin/bash

# # echo "hello world $$" ## $$ is the print out the PID 

echo "$1 is currently eating $2 , at the same time drinking $3 -- All arguements: $@" 

echo  "$0 has input of $# arguements."

echo $? 