#!/bin/bash

# init script
if [ -z "$SCHOOL_CHEATINGS_DIR" ]; then
    SCHOOL_CHEATINGS_DIR="$HOME/.school-cheatings"
fi
SCHOOL_CHEATINGS_BIN="$SCHOOL_CHEATINGS_DIR/bin"
SCHOOL_CHEATINGS_DAT="$SCHOOL_CHEATINGS_DIR/dat"
SCHOOL_CHEATINGS_PROG="$SCHOOL_CHEATINGS_DAT/programming"
SCHOOL_CHEATINGS_VP="$SCHOOL_CHEATINGS_DAT/viaproxy"

export PATH="$SCHOOL_CHEATINGS_BIN:$PATH"

if [ -e "$SCHOOL_CHEATINGS_PROG" ]; then
  if ! [ -z "$(which gcc)" ]; then
      source "$SCHOOL_CHEATINGS_PROG/c_cheats.sh"
  fi
  if ! [ -z "$(which javac)" ]; then
      source "$SCHOOL_CHEATINGS_PROG/java_cheats.sh"
  fi
fi

if [ -e "$SCHOOL_CHEATINGS_VP" ]; then
  if ! [ -z "$(which java)" ]; then
      export PATH="$SCHOOL_CHEATINGS_VP/java:$PATH"
  fi
  if ! [ -z "$(which ssh)" ]; then
      export PATH="$SCHOOL_CHEATINGS_VP/ssh:$PATH"
  fi
fi
