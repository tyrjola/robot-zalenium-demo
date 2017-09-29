#!/bin/sh
python -m robot --outputdir ./logs/ \
                --variablefile variables.py \
                ./robot/tests
