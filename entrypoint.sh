#!/bin/sh
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')

if [ -z "$1" ]; then
  ARGS="."
else
  ARGS="$1"
fi

echo "## Running PHP Copy Paste Detector with ${ARGS}"
echo "PHP Version : ${PHP_FULL_VERSION}"

/phpcpd ${ARGS}
