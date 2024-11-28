#!/bin/bash

# A script to make sending patches to other rices easier

git pull --rebase

rices=(
  "yume"
)

commits=${@}

for rice in ${rices[@]}; do
  for commit in ${commits[@]}; do
    git pull --rebase
    git checkout $rice
    git cherry-pick $commit
    git push
  done
done
