#!/bin/sh
set -e

# Prepend "aws" if the first argument is not an executable
if ! type -- "$1" &> /dev/null; then
	set -- aws "$@"
fi

exec "$@"
