#!/bin/bash

check_args() {
    expected=2
    if [ $# -ne $expected ]; then
        echo "Usage: $0 <arg1> <arg2>"
        exit 1
    fi
}

check_args "$@"
