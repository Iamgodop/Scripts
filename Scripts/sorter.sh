#!/usr/bin/env bash

shopt -s nullglob
# source ../Utils/filetypes.sh
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../Utils/filetypes.sh"

# fileTypes=('*.png' '*.jpg' '*.jpeg' '*.mp3' '*.py' '*.java' '*.mp4')

for fileType in "${fileTypes[@]}"; do

  files=( $fileType )

  if [[ ${#files[@]} -ne 0 ]]; then
    printf "Found %s %s files. List them? [y/N]: " "${#files[@]}" "${fileTypeNames[$fileType]}"   ### TODO: small change: add color to the output and also print them in columns" ###
    read choice

    if [[ $choice == [yY] ]]; then
      printf "%s\n" "${files[@]}"
    fi
    
    printf "Move the located files to their respective directory? [Y/n]: "
    read -r choice
    
    if [[ choice == [nN] ]]; then
      printf "Would you like to move these to a custom directory? [y/N]: "
      read -r choice
      if [[ choice == [yY] ]]; then
        read -r directory
        mkdir -p $directory
        mv $fileType $directory
      else
        printf "Aborting operation for %s files.\n" "${fileTypeNames[$fileType]}"
      fi 
    else
      mkdir -p ${fileTypeDirs[$fileType]}
      echo "mv ${files[@]} ${fileTypeDirs[$fileType]}"
      mv "${files[@]}" "${fileTypeDirs[$fileType]}"
    fi
  fi
done
