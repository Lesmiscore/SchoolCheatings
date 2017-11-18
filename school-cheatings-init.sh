#!/bin/bash

# init script
if [ -z "$SCHOOL_CHEATINGS_DIR" ]; then
    SCHOOL_CHEATINGS_DIR="$HOME/.school-cheatings"
fi
SCHOOL_CHEATINGS_BIN="$SCHOOL_CHEATINGS_DIR/bin"

PATH="$SCHOOL_CHEATINGS_BIN:$PATH"

