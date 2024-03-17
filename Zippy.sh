#!/bin/bash
s_dir=$(dirname "$0")
cd "$s_dir" || exit
file="$1"
file_name=$(basename -- "$file")
file_name="${file_name%.zip}"
unzip -q "$1" -d "$HOME/.Zippy"
source $HOME/.Zippy/$file_name/Dependencies/bin/activate || echo "Dependencies not properly configured!"
python3 "$HOME/.Zippy/$file_name/main.py"
rm -r "$HOME/.Zippy"
deactivate || echo " "
