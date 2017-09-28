#!/bin/sh
python -m robot --outputdir ./logs/ \
                --variable "SERVER_URL:${SERVER_URL}" \
                --variable "SELENIUM_URL:${SELENIUM_URL}" \
                --variable "SELENIUM_SPEED:${SELENIUM_SPEED}" \
                --variable "BROWSER:${BROWSER}" \
                ./robot/tests
