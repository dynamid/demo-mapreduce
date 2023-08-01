import glob

read_files = glob.glob("data/reduced/*.txt")

with open("mapreduce_docker_results.txt", "wb") as outfile:
    for f in read_files:
        with open(f, "rb") as infile:
            outfile.write(infile.read())
