#!/bin/bash

# Utilities for speed-hacking in school



# Launches gedit or nano to open Java file.
# If not exists, create a new one.
# gedit or nano is depending on $DISPLAY variable
java_edit(){
  local FILENAME=$(__java_filename $1)
  if ! [ -e $FILENAME ] ; then
    # Edit here if you want an another template
    cat << EOS > $FILENAME
// change package name here
package com.nao20010128nao.schoolcheatings

public class Main {
  public static void main(String[] args) {
    
  }
}
EOS
  fi
  if [[ "$DISPLAY" == "" ]] ; then
    nano $FILENAME || true
  else
    gedit $FILENAME > /dev/null 2> /dev/null &
  fi
}

# Recompiles all Java files in current directory.
java_recompile(){
  for i in $(ls -1 *.java)
  do
    __java_compile ${i%\.java} $@
  done
}

# Runs Java file/class after compilation
java_run(){
  local OUTNAME=$(__java_outname $1)
  __java_compile $@ && java $OUTNAME
}



#
# Misc
#

__java_filename(){
  if [[ "$1" == "*.java" ]] ; then
    echo $1
  else
    echo $1.java
  fi
}

__java_outname(){
  if [[ "$1" == "*.java" ]] ; then
    echo ${1%.java}.class
  else
    if [[ "$1" == "*.class" ]] ; then
      echo $1
    else
      echo $1.class
    fi
  fi
}

__java_compile(){
  local FILENAME=$(__java_filename $1)
  javac $FILENAME
}



