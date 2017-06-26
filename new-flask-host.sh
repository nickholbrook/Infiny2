#!/bin/bash

aws cloudformation deploy --template-file createInfinyBlog.json --stack-name Infiny
sleep 10s
ip_addr=$(aws cloudformation describe-stacks --stack-name Infiny | grep OutputValue | awk -F ":" '{print $2}')

clear
echo $ip_addr
