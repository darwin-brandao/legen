#!/bin/bash

# Store the script path in a variable
DIR=$( cd -- "$( dirname "$(readlink -f "$0")" )" &> /dev/null && pwd )

python "${DIR}/legen.py" "${@}"
