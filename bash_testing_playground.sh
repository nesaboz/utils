#!/bin/bash
# make sure this file has correct line endings for the system, in PyCharm go to File -> File Properties -> Line Separators
# go to github and create a new repo with name <repo_name>
# make sure this script is executable: chmod +x setup_new_project.sh check with ls -l (should have several x values)
# run it as ./setup_new_project.sh <repo_name> <python_version> name, for example: ./setup_new_project.sh test_repo 3.10
repo_name=$1
python_ver=$2

if ! [[ -n $repo_name ]] || ! [[ -n $python_ver ]]; then
  echo "you didn't enter repo name and/or python version"
  exit 0
fi

echo $repo_name $python_ver
