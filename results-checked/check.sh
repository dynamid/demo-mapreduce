#!/bin/sh

cat mapreduce_python_results.txt | sed "s/\"//g" | sed "s/('//g" | sed "s/(//g" | sed "s/)//g" | sed "s/', / /g" | sed "s/,//g" | sort > mapreduce_python_results-formatted.txt

cat mapreduce_docker_results.txt | sed "s/\"//g" | sed "s/('//g" | sed "s/(//g" | sed "s/)//g" | sed "s/', / /g" | sed "s/,//g" | sort > mapreduce_docker_results-formatted.txt

cat mapreduce_k3s_results.txt | sed 's/,/\n/g' | sed 's/{/\n/g' | sed 's/}//g' | sed "s/\":/ /g" | sed "s/\"//g" | sed '/^10./d' | sed '/^$/d' | sort > mapreduce_k3s_results-formatted.txt

echo "Comparing results of the 1-python and 2-docker examples"
if [ ! -z "$(diff mapreduce_python_results-formatted.txt mapreduce_docker_results-formatted.txt)" ]; then \
  echo "Files mapreduce_python_results-formatted.txt  and  mapreduce_docker_results-formatted.txt differ!"
else
  echo "Files mapreduce_python_results-formatted.txt  and  mapreduce_docker_results-formatted.txt are identical!"
fi

echo "Comparing results of the 1-python and 3-k3s examples"
if [ ! -z "$(diff mapreduce_python_results-formatted.txt mapreduce_k3s_results-formatted.txt)" ]; then \
  echo "Files mapreduce_python_results-formatted.txt  and  mapreduce_k3s_results-formatted.txt differ!"
else
  echo "Files mapreduce_python_results-formatted.txt  and  mapreduce_k3s_results-formatted.txt are identical!"
fi

#rm *-formatted.txt
