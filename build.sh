#!/bin/bash

npm install
# if hugo version less than v0.139 use snap
if [ "$(hugo version | awk '{print $5}')" \< "v0.139" ]; then
    sudo snap install hugo --channel=extended
fi 
hugo version