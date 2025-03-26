#!/bin/sh

INPUT=$1

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file to process>"
  exit
fi

if [ ! -f $INPUT ]; then
  echo "File <$INPUT> does not exist."
  exit
fi

CMD="curl http://localhost:8080/api/v1/namespaces/default/pods/mapreduce-master/proxy/compute\?text\="

TXT=$(cat $INPUT | tr -s "\n" " "  | sed 's/\ \{1,\}//' | sed 's/[[:space:]]/ /g'  | sed 's/\ \{1,\}/+/g'|sed 's/.$//'|sed "s/'/%27/g")

# awk '{print}' ORS=''
# sed 's/[[:blank:]]/ /g'
# sed 's/[^a-zA-Z0-9 ]//g' 
# sed 's/\ \{1,\}/+/g' 

FINAL_CMD="$CMD$TXT"

kubectl proxy --port=8080 2>/dev/null &
sleep 1
eval $FINAL_CMD > ../results/mapreduce_k3s_results.txt
