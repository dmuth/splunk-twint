#!/bin/bash
#
# Push our Docker container(s) to Docker Hub.
#

# Errors are fatal
set -e

NAME="twint"

#
# Change to the parent of this script
#
pushd $(dirname $0) > /dev/null
cd ..

echo "# "
echo "# Pushing container '${NAME}' to Docker Hub..."
echo "# "
docker push dmuth1/${NAME}

echo "# Done!"

