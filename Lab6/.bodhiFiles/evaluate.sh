#!/bin/bash

cd /home/.evaluationScripts/.bodhiFiles
[ -f answer.txt ] && rm answer.txt
mv /home/labDirectory/answer.txt /home/.evaluationScripts/.bodhiFiles/
python3 autograder.py
