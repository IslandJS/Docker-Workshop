#!/bin/bash

docker run -d -p 2015:2015 langrisha/npm-lazy --external-url=http://10.0.1.33:2015 --show-config --host=0.0.0.0 --port 2015

# --external-url=http://192.168.59.103:2015  
