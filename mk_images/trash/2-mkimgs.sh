#!/bin/sh

repo=dhub.ox

build_push () {
  cd $1
    docker build --no-cache -t $repo/$1 .
    docker push $repo/$1
  cd ..
}

echo "--------------------------------- IMAGE CREATION START ------------------------\n\n"

build_push python3:3.12-rc-alpine
build_push map
build_push combine
build_push reduce

# Remove unused images
docker image prune -f

echo "--------------------------------- IMAGE CREATION END --------------------------\n\n"
