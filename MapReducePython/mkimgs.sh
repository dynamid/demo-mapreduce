#!/bin/sh

echo "--------------------------------- IMAGE CREATION START ------------------------\n\n"

#build python3-alpine image
cd python3.12-rc-alpine
  docker build --no-cache -t dhub.ox/python3:3.12-rc-alpine .
  docker push dhub.ox/python3:3.12-rc-alpine
cd ..

# Build Map Script Image
cd map
  docker build --no-cache -t dhub.ox/map .
  docker push dhub.ox/map
cd ..

# Build Combine Script Image
cd combine
  docker build --no-cache -t dhub.ox/combine .
  docker push dhub.ox/combine
cd ..

# Build Reduce Script Image

cd reduce
  docker build --no-cache -t dhub.ox/reduce .
  docker push dhub.ox/reduce
cd ..

# Remove unused images
docker image prune -f

echo "--------------------------------- IMAGE CREATION END --------------------------\n\n"
