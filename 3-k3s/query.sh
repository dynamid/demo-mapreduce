#!/bin/sh

INPUT=$1

if [ ! -f $INPUT ]; then
  echo "File <$INPUT> does not exist."
  exit
fi

CMD="curl http://127.0.0.1:8080/api/v1/namespaces/default/pods/mapreduce-master/proxy/compute\?text\="

TXT=$(cat $INPUT | tr -s "\n" " "  | sed 's/\ \{1,\}//' | sed 's/[[:space:]]/ /g'  | sed 's/\ \{1,\}/+/g'|sed 's/.$//'|sed "s/'/%27/g")

# awk '{print}' ORS=''
# sed 's/[[:blank:]]/ /g'
# sed 's/[^a-zA-Z0-9 ]//g' 
# sed 's/\ \{1,\}/+/g' 

FINAL_CMD="$CMD$TXT"

kubectl proxy --port=8080 2>/dev/null & \
eval $FINAL_CMD
