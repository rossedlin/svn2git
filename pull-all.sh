#!/bin/bash
for branch in $(git branch --all | grep '^\s*remotes' | egrep --invert-match '(:?HEAD|master)$'); do
#  echo $branch
  echo ${branch##*/}
#  echo ${branch#*/}
  git checkout -b tags/${branch##*/} svn/tags/${branch##*/} --
#    git branch --track "${branch##*/}" "$branch"
done
