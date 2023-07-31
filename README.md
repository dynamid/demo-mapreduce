3 different versions of the map-reduce algorithm:

* easy-mapreduce  
Python code extracted from the second example.  
  It simply uses a dictionnary and does a +1 on each word's entry.


* MapReducePython  
This is a forked/debugged version of https://github.com/sanjitk7/MapReducePython


* simple-mapreduce  
This is a forked/debugged version of https://github.com/DigWing/simple-mapreduce


Also contains:
>  input-text/  
>  ├── a-tale-of-two-cities.txt  
>  └── a-tale-of-two-cities_short.txt  

. the "short" version is one that has been created so that "simple-mapreduce"
  can process it. Otherwise the query string is too long.



>  results/  
>  ├── easy-mapreduce-formatted.txt  
>  ├── easy-mapreduce.txt  
>  ├── format.sh  
>  ├── MapReducePython.txt  
>  ├── simple-mapreduce-formatted.txt  
>  └── simple-mapreduce.txt  

The 3rd implementation generates the results in a format different from the first 2.  
The format.sh script converts the results of the 3rd implementation to match that of
the first two, so we can compare the respective results and make sure they match.

