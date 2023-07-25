#!/bin/sh

# awk '{print}' ORS=''
# sed 's/ \{1,\}/ /g'
# sed 's/^[ \t]*//'

cat a-tale-of-two-cities.txt | sed "s/n't/nNNNt/g" | sed 's/[^a-zA-Z0-9 ]/ /g' | sed "s/nNNNt/n't/g"
