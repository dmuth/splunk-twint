#!/bin/bash
#
# Build our Docker container.
#

# Errors are fatal
set -e

NAME="twint"
DOCKERFILE="Dockerfile"

#
# Change to the parent of this script
#
pushd $(dirname $0) > /dev/null
cd ..

echo "# "
echo "# Building Docker container '${NAME}'..."
echo "# "
docker build . -f ${DOCKERFILE} -t ${NAME}

echo "# "
echo "# Tagging Docker container ${NAME}..."
echo "# "
docker tag ${NAME} dmuth1/${NAME}

echo "# Done!"


