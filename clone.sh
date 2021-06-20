#!/bin/sh
cd <Your Workspace Directory>
echo Inside directory : $(pwd)
repo_url=$1
repo=${repo_url##*/}
echo Repository Name : ${repo%%.*}
git clone $repo_url
open -na "IntelliJ IDEA.app" --args "${repo%%.*}"
