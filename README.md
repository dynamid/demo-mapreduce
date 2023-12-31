# Demo's goal

This project aims to present the docker and kubernetes technologies, with 3 implementations of
a word-frequency counting algorithm.  
A simple dictionary-based counting python program and 2 MapReduce parallel, distributed algorithm implementations.

# The 3 versions:

## 1-python/wordfreq.py  

It simply uses a dictionnary and does a +1 on each word's entry.


## 2-docker/mapreduce.sh  
This is a forked/debugged version of https://github.com/sanjitk7/MapReducePython


## 3-k3s/mapreduce.sh  
This is a forked/debugged version of https://github.com/DigWing/simple-mapreduce


Also contains:
>  input-text/  
>  └── a-tale-of-two-cities.txt  

This is a cut-down  version of the original text, created so the "k3s" program
can process it. Otherwise the query string would be too long.



>  results/  
>  └── check_results.sh  

The 3rd implementation generates the results in a format different from the first 2.  
The *check_results.sh* script can be used after the 3 exemples have been run, on the same file, to compare their results.  

It converts the results of the 3rd implementation to match the format of
the first two, so we can make sure the 3 results match.

