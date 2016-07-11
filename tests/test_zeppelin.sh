#!/bin/sh

HTTP_STATUS=`curl -o /dev/null --silent --head --write-out '%{http_code}\n' http://127.0.0.1:8080/`

echo $HTTP_STATUS

if [[ $HTTP_STATUS == "200" ]];
then
    exit 0;
else
    exit 1;
fi
