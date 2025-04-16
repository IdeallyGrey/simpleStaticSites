#!/bin/bash

cd /usr/local/bin/sssScript/

echo "--- Generating HTML ---"

./simpleStaticSites.sh

echo "--- Copying to nginx ---"

cp -rv ./html/* /usr/share/nginx/html/

echo "--- Starting nginx ---"

exec nginx -g "daemon off;"
