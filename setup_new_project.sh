#!/bin/bash
# make sure this file has correct line endings for the system, in PyCharm go to File -> File Properties -> Line Separators
# also make sure script is executable: chmod +x script.sh, check with ls -l (should have several x values), you will run it as ./script.sh
# also make sure conda is up to date: conda update conda
# go to github and create a new repo, then give it a name here
repo_name=$1
python_ver=$2
yes | conda create -n $repo_name python=$python_ver
conda activate $repo_name
mkdir $repo_name
cd $repo_name || exit
echo $repo_name >> README.md
git config --global init.defaultBranch main
git init
pip install -U scikit-learn pandas notebook
conda env export > env.yml
git add .
git commit -m "first commit"
git branch -M main
remote_name=git@github.com:nesaboz/$repo_name.git
git remote add origin $remote_name
git push -u origin main
