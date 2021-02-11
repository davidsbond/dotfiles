#!/usr/bin/env bash

# This script copies the contents of the dotfiles repo into the current home directory. For each directory in the
# dotfiles repository, find any files, creating a filename that consists of .<directory><filename>. For example,
# git/config results in .gitconfig. Copy these files into the $HOME directory.

OUTPUT_DIR=$HOME
DOTFILES_DIR=$(cd "$(dirname "$0")" && pwd)

for DIR in "$DOTFILES_DIR"/*/ ; do
    PREFIX=.$(basename "$DIR")

    for FILE in "$DIR"* ; do
      OUTPUT="$OUTPUT_DIR/$PREFIX$(basename "$FILE")"
      cp "$FILE" "$OUTPUT"
    done
done
