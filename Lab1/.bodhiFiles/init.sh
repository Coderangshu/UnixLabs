#!/bin/bash
if [ -f "/opt/check.txt" ]; then
    echo "No Need!"
else
    mv /home/.evaluationScripts/.bodhiFiles/studentDirectory/* /home/labDirectory/
    chmod ugo+r+w /home/labDirectory/*
    echo Done > /opt/check.txt
fi
