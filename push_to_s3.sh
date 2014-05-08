#!/bin/bash
# run with --dryrun to see what will happen
aws s3 sync $1 --acl public-read content s3://static.mindmup.com
#curl --verbose -H "Origin: http://www.mindmup.com" -H "Access-Control-Request-Method: GET" http://static.mindmup.com/font/3.2.1b/fontawesome-webfont.woff -o /dev/null
