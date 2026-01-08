#!/usr/bin/env bash

shopt -s nullglob
source ./filetypes.sh

# fileTypes=('*.png' '*.jpg' '*.jpeg' '*.mp3' '*.py' '*.java' '*.mp4')

for fileType in "${fileTypes[@]}"; do

  files=( $fileType )

  if [[ ${#files[@]} -ne 0 ]]; then
    printf "Found %s %s files. List them? [y/N]: " "${#files[@]}" "$fileType"   ### TODO: small change: add color to the output and also print them in columns" ###
    read choice

    if [[ $choice == [yY] ]]; then
      printf "%s\n" "${files[@]}"
    fi
    
    printf "Move the located files to their respective directory? [Y/n]: "
    read -r choice
    
    if [[ choice == [yY] ]]; then
      mv $fileType ${fileTypeDirs[$fileType]}
    else
      printf "Would you like to move these to a custom directory? [y/N]: "
      read -r choice
      if [[ choice == [yY] ]]; then
        read -r directory
        mv $fileType $directory
  fi
done


