#!/usr/bin/env python3
import sys
import datetime
from ast import literal_eval as make_tuple
begin_time = datetime.datetime.now()

output_no = sys.argv[1]
total_chunks = sys.argv[2]
print(output_no)
data_location = "./mapper_data/"
input_file_path = data_location+"combined_split_"+str(output_no)+"_"+str(total_chunks)+".txt"
reduced_dict = {}
try:
    print("input file path in reduce.py of node ",output_no,input_file_path)
    with open(input_file_path, encoding = 'utf-8') as f:
        d = f.read()
        # convert to tuple
        tuples_list = d.split("\n")
        count = 0
        for j in tuples_list:
            count+=1
            # parse the tuple
            try:
                j_tuple = make_tuple(j)
            except:
                pass
            # reduce logic
            tuple_reduce_sum = sum(j_tuple[1]) # total the values of the list
            reduced_dict[j_tuple[0]] = tuple_reduce_sum
        with open(data_location+"reduced_"+str(output_no)+"_"+str(total_chunks)+ ".txt","w", encoding = "utf-8") as reduced_data_file:
            tup_view = reduced_dict.items()
            tup_list = list(tup_view)
            for y in tup_list:
                reduced_data_file.write(str(y)+"\n")
    end_time = datetime.datetime.now()
    print("COMPUTATION TIME: REDUCE NODE "+str(output_no)+" = "+str(end_time-begin_time))

except IOError as e:
    print(IOError,e)
