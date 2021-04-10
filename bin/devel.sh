#!/bin/bash
#
# Build and run the Docker container in dev mode (with an interactive shell).
#

# Errors are fatal
set -e

FULL=""
NAME="twint"


#
# Change to the parent of this script
#
pushd $(dirname $0) > /dev/null
cd ..

./bin/build.sh $@

echo "# "
echo "# Running Docker container '${NAME}' with interactive bash shell..."
echo "# "
#docker run -v $(pwd):/mnt -it ${NAME} bash
docker run -v $(pwd):/mnt -v $(pwd)/python-scripts:/python-scripts -it ${NAME} bash

