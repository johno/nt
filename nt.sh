#!/usr/bin/env bash

function nt {
  case $1 in
    o) nt_open $2 ;;
    open) nt_open $2 ;;
    s) nt_show $2 ;;
    show) nt_show $2 ;;
    l) nt_list ;;
    ls) nt_list ;;
    *) nt_menu ;;
  esac
}

function nt_open {
  vim $(nt_take_file ~/nt/"$1")
}

function nt_show {
  cat $(nt_take_file ~/nt/"$1")
}

function nt_list {
  ls ~/nt
}

function nt_menu {
  echo '✎ nt - the minimal note taking script'
  echo ''
  echo 'Usage:'
  echo '  nt open my-notes'
  echo '  nt ls'
  echo '  nt show random-thoughts'
  echo ''
  echo 'Commands:'
  echo '  open, o - open or create a file'
  echo '  show, s - cat a given file'
  echo '  ls, l   - list all files'
}

# Take a text file name and build it with an extension, if needed.
# Prefer md over any other extension
# http://pig-monkey.com/2012/12/notes-unix/
function nt_take_file {
  # If an extension was given, use it
  if [[ "$1" == *.* ]]; then
    echo "$1"
  else
    # ... try the file without any extension.
    if [ -e "$1" ]; then
      echo "$1"
    # ... use a markdown extension.
    else
      echo "$1".md
    fi
  fi
}
