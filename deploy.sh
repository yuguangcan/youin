#! /bin/sh
#地址


cp -r dist/static/*  /Users/yuguangcan/webserver/php/static/
cp -r dist/template/*  /Users/yuguangcan/webserver/php/ci/templates/

cp -r dist/static/*  /Users/yuguangcan/project/youyin/svn/static/
cp -r dist/template/*  /Users/yuguangcan/project/youyin/svn/application/views/templates/

# cd /Users/yuguangcan/project/youyin/svn
# svn ci -m" "
# svn st|awk '{print $2}'|xargs svn add
# svn ci -m" "

# domain="root@114.215.156.131"

# scp -r dist/static/*  ${domain}:/alidata/www/youin/static/
# scp -r dist/template/*  ${domain}:/alidata/www/youin/application/views/templates/


