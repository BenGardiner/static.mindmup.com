#!/bin/bash
aws s3 sync --acl public-read content s3://static.mindmup.com
