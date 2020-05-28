#!/bin/bash
set -eu

checkContents() {
    local directory="${1:-$(pwd)}"

    if [ "$(ls -A $directory)" ]; then
        echo "not empty"
    else 
        echo "empty"
        # rmdir $directory
    fi
}

checkContents testStudy
checkContents deleteTest
checkContents
