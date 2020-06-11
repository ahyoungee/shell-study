#!/bin/bash
set -eu

checkError() {
    local logFile="${1:-"./test.log"}"
    while true 
    do 
        logMessage=$(tail -n 1 $logFile )
        if [ $logMessage == "hello" ]; then
            echo "エラー起きました" >> $logFile
        fi
    done
}

checkError
