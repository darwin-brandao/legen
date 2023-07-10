#!/bin/bash

# Store the script path in a variable
DIR=$( cd -- "$( dirname "$(readlink -f "$0")" )" &> /dev/null && pwd )

# Install requirements
mkdir "${DIR}/env"

python -m pip install --user virtualenv

python -m venv "${DIR}/env"
source "${DIR}/env/activate"

python install --upgrade pip
pip install -r requirements.txt "${DIR}"

# Create symbolic link to a $PATH directory
[ -d "${HOME}/.local/bin" ] \
	&& ln -s "$( readlink -f legen.sh )" "${HOME}/.local/bin/legen" \
	|| ln -s "$( readlink -f legen.sh )" "$( cut -d ':' -f1 <<< $PATH )/legen" \
