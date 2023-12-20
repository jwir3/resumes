#! /usr/bin/env bash
set -e

FILES="src/*"
for f in $FILES
do
  echo "Processing $f file..."
  echo "Compiling pdf..."
  ./compile.sh "$f" pdf
  echo "Compiling html.."
  ./compile.sh "$f" html
  echo "Copying md..."
  cp "$f" output
  echo "DONE!"
done
