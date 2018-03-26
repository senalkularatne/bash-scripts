# This script will extract an archive (tar) into a new directory.
# $1 --> path of the archive
# $2 --> path where the archive will be extracted to
# Example: ./mdextract  path/to/archive.tar  ./backup2

#!/usr/bin/env bash

if [ ! -d "$2" ]; then
  # create backup if user doesn't specify a directory
  mkdir backup2
  # navigate to the directory created by the program
  cd ./backup2/
  echo "Expanding $1 into backup2"
else
  # create directory specified by user
  mkdir $2
  # navigate to the directory specified by user
  cd ./$2/
  echo "Expanding $1 into ./$2"
fi

# Go back one directory find a specified .tar file and extract it into the new directory
tar -xvf ../$1
echo "done"
