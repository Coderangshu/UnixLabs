#!/bin/bash

# Check if exactly one argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <Lab Name>"
    exit 1
fi

lab=$1

studentDirectory="$lab/.bodhiFiles/studentDirectory"

rsync -a --exclude="node_modules" "$lab/" ".evaluationScripts/"
tar -czvf instructor.tgz .evaluationScripts

rsync -a --exclude="node_modules" "$studentDirectory/" "labDirectory/"
tar -czvf student.tgz labDirectory

# Remove the copied and renamed folders
rm -rf .evaluationScripts labDirectory
