#!/bin/sh
SOURCE_DIR=/var/working/source
TARGET_DIR=/var/working/target
echo "About to process the files from $SOURCE_DIR"
cd $SOURCE_DIR
for f in *.yml
do
  echo "Encrypting $f file..."
  ansible-vault encrypt --output  $TARGET_DIR/$f $SOURCE_DIR/$f
  echo "Done with $f file..."
done
