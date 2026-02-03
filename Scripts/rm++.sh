#! /usr/bin/env bash

shopt -s nullglob

dateDiff() {
  date=$(grep -i "^DeletionDate" "$1" | cut -d = -f 2)
  diff=$((($(date -d now +%s) - $(date -d "$date" +%s)) / 86400))
  echo $diff
}

getFileName() {
  IFS="/" read -ra ARR <<< $1
  echo ${ARR[@]:(-1)}
}

RED='\e[31m'
END='\e[0m'
GREEN='\e[32m'

if [[ $1 == "--restore" ]]; then     ### TODO: Add restore behavior
  fileLoc="$HOME/.local/share/Trash/files/*"
  files=( $fileLoc )
  # echo ${files[@]}
  for file in "${@:2}"; do
    if [[ *"$file"* == "${files[@]}" ]]; then
      echo $file
    else
      echo -e "\e[31m$file not found!\e[0m"
    fi
  done

elif [[ $# == 0 ]]; then
  fileType="*.trashinfo"
  fileLoc="$HOME/.local/share/Trash/info/*.trashinfo"   ### NOTE: ~ does not expand inside quotes
  files=( $fileLoc )
 
  for file in "${files[@]}"; do
    diff=$(dateDiff "$file")
    if [[ $diff -gt 30 ]]; then
      rm "$file" "${file%.trashinfo}"
      echo "Deleted $file"
      echo -e "Deleted $file[$(date -d now)]\n" >> $HOME/.local/share/Trash/logs.txt
    fi
  done

else
  for file in "${@:1}"; do
    echo "$file"
    if [[ -e "$file" ]]; then
      # echo "yes"; exit 0
      touch "$HOME/.local/share/Trash/info/$file.trashinfo"
      echo -e "[Trash Info]\nPath=$(pwd)/$file\nDeletionDate=$(date -d now +%Y-%m-%dT%H:%M:%S)" > "$HOME/.local/share/Trash/info/$file.trashinfo"
      mv "$file" "$HOME/.local/share/Trash/files/"
    else
      echo -e "\e[31m$file does not exist. please re-check file name. Skipping $file\e[0m"
    fi
  done
fi
