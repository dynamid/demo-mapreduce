import sys
sys.path.append('../')

from read import input_and_chunk

chunks_n = int(sys.argv[1].strip())
file = sys.argv[2]

if (__name__=="__main__"):
    # Splitting input into chunks
    input_and_chunk.input(chunks_n, file)
