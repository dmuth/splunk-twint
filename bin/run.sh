#!/bin/bash
#
# Wrapper to run our Twint container.
#

# Errors are fatal
set -e

NAME="twint"

#
# Change to the parent of this script
#
pushd $(dirname $0) > /dev/null
cd ..

./bin/build.sh

echo "# "
echo "# Running Docker container..."
echo "# "
echo "# Args: $@"
echo "# "
docker run -v $(pwd):/mnt dmuth1/${NAME} $@

