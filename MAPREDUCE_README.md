# Credit where credit is due

Extracts from https://github.com/sanjitk7/MapReducePython/README.md
More information can also be found (From the 3-k3s example) at https://medium.com/digitalwing/development-of-a-distributed-computing-system-based-on-mapreduce-and-kubernetes-837fc7f112f9

## What is MapReduce?

The MapReduce Algorithm is a computational model for parallel and distributed computing used in big data and cloud computing on a cluster. The idea is to use multiple machines in the distributed system that all contain portions of the data that has to go though a certain computation. For this purpose the MapReduce algorithm has 2 major phases - The Map Phase and The Reduce Phase.

### Map Phase

Map Function is the first step in MapReduce Algorithm. Map phase will work on key & value pairs input. It takes input tasks and divides them into smaller sub-tasks and then perform required computation on each sub-task in parallel. Mapper output will be displayed in the form of (K,V) pairs. Map phase performs the following two sub-steps -
1. **Splitting** - Takes input dataset from Source and divide into smaller sub-datasets.
2. **Mapping** - Takes the smaller sub-datasets as an input and perform required action or computation on each sub-dataset.
The output of the Map Function is a set of key and value pairs as <Key, Value>.

### Combine Phase

There is a hidden intermediate combine phase which gets all the Map function's output as input to sort & shuffle. The shuffling is the grouping of the data from various nodes based on the key. This is a logical phase. Sort is used to list the shuffled inputs in sorted order.

### Reduce Phase

Reduce phase is the final step in MapReduce Algorithm. This is where the business logic or the core computation step lies. This happens in parallel or serial depending on the multiplicity of tasks.
