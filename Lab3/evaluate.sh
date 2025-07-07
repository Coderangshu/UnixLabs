#!/bin/bash

cd /home/.evaluationScripts/.bodhiFiles
[ -f answer.txt ] && rm answer.txt
cp /home/labDirectory/answer.txt /home/.evaluationScripts/.bodhiFiles/
rm -rf /home/labDirectory/*
cp -r /home/.evaluationScripts/.bodhiFiles/studentDirectory/* /home/labDirectory/
python3 /home/.evaluationScripts/.bodhiFiles/autograder.py
