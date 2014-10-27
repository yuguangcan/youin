#! /bin/sh
#地址


domain="root@114.215.156.131"

scp -r dist/static/*  ${domain}:/alidata/www/youin/application/static/
scp -r dist/template/*  ${domain}:/alidata/www/youin/application/views/templates/

