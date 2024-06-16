#!/bin/bash

echo Start

for folder in "$(pwd)"/*
do
  if [ -d "$folder" ]; then
    echo Checking "$folder"
    cd $folder
      if git rev-parse  &> /dev/null; then
        echo "The current directory is a git repo."

        git add . ;
        git commit -m "Last commit from mac";
        git push;

      else
        echo "The current directory is not a git repo."
      fi
    cd ..
  fi
  echo
done

echo End 