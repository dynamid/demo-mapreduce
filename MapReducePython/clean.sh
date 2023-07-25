docker kill $(docker ps -q)
docker container prune -f

docker volume rm mapper_data -f
docker volume prune -f

rm -f data/split_* data/reduced/*
# rm -f data/final/final_text_freq.txt
