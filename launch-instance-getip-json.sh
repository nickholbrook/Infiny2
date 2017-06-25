#!/bin/bash

aws cloudformation deploy --template-file createInfinyBlog.json --stack-name Infiny
sleep 10s
#aws cloudformation describe-stacks --stack-name Infiny
ip_addr=$(aws cloudformation describe-stacks --stack-name Infiny | grep OutputValue | awk -F ":" '{print $2}')

#ip_message = "Input the following address in your browser address bar: http://"
#ip_port = ":5000"

clear
echo $ip_addr
