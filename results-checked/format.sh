#!/bin/sh

cat simple-mapreduce.txt | sed 's/,/\n/g' | sed 's/{/\n/g' | sed 's/}//g' | sed "s/\":/ /g" | sed "s/\"//g" | sort > simple-mapreduce-formatted.txt

cat easy-mapreduce.txt | sed "s/\"//g" | sed "s/('//g" | sed "s/(//g" | sed "s/)//g" | sed "s/', / /g" | sed "s/,//g" | sort > easy-mapreduce-formatted.txt

diff simple-mapreduce-formatted.txt easy-mapreduce-formatted.txt
