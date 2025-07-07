#!/bin/bash

# Check if exactly one argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <Lab Name>"
    exit 1
fi

lab=$1

studentDirectory="$lab/.bodhiFiles/studentDirectory"

# Copy lab directory to .evaluationScripts, excluding node_modules and .bodhiFiles/.solutions
rsync -a \
    --exclude="node_modules" \
    --exclude=".bodhiFiles/.solutions" \
    "$lab/" ".evaluationScripts/"

# Create instructor archive
tar -czvf instructor.tgz .evaluationScripts

# Copy student directory to labDirectory, excluding node_modules
rsync -a --exclude="node_modules" "$studentDirectory/" "labDirectory/"

# Create student archive
tar -czvf student.tgz labDirectory

# Remove temporary directories
rm -rf .evaluationScripts labDirectory
