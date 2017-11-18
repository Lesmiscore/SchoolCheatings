#!/bin/bash

# Utilities for speed-hacking in school


# Compiles C file using gcc with less characters.
c_compile(){
  local FILENAME=$(__c_filename $1)
  local OUTNAME=$(__c_outname $1)
  gcc $FILENAME -o $OUTNAME -lm $2 $3 $4 $5 $6 $7 $8 $9
}

# Launches gedit or nano to open C file.
# If not exists, create a new one.
# gedit or nano is depending on $DISPLAY variable
c_edit(){
  local FILENAME=$(__c_filename $1)
  if ! [ -e $FILENAME ]; then
    # Edit here if you want an another template
    cat << EOS > $FILENAME
#include <stdio.h>

int main(void) {
  return 0;
}
EOS
  fi
  if [[ "$DISPLAY" == "" ]]; then
    nano $FILENAME
  else
    gedit $FILENAME > /dev/null 2> /dev/null &
  fi
}

# Recompiles all C files in current directory.
c_recompile(){
  for i in $(ls -1 *.c)
  do
    c_compile ${i%\.c} $@
  done
}

# Runs C file after compilation
c_run(){
  local OUTNAME=$(__c_outname $1)
  c_compile $@ && ./$OUTNAME
}



#
# Misc
#

__c_filename(){
  if [[ "$1" == "*.c" ]]; then
    echo $1
  else
    echo $1.c
  fi
}

__c_outname(){
  if [[ "$1" == "*.c" ]]; then
    echo ${1%.c}
  else
    echo $1
  fi
}


