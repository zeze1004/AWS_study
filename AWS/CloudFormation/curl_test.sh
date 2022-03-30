#!/bin/bash
ALB_DNS=$1
if [[ -z $1 ]]
then
    echo "ALB_DNS is required!!";
    echo "e.g). ./curl_test.sh <PUT_YOUR_ALB_DNS_NAME_HERE>";
    exit 1;
fi
while true; do
    ## put your alb dns name to the below line
    echo `curl -H 'Cache-Control: no-cache' http://$ALB_DNS/service` 1 > /dev/null ;
    sleep 0.2;
done
