#!/bin/bash
# run with --dryrun to see what will happen
aws s3 sync $1 --acl public-read content s3://static.mindmup.com
