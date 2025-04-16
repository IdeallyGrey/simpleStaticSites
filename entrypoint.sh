#!/bin/bash

cd /usr/local/bin/sssScript/
./simpleStaticSites.sh
cp ./html/* /usr/share/nginx/html/

exec nginx -g "daemon off;"
