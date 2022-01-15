#!/bin/bash

function die {
    declare MSG="$@"
    echo -e "$0: Error: $MSG">&2
    exit 1
}

aws cloudformation package --template-file template.yml \
    --s3-bucket codepipeline-us-east-1-1642217136763 \
    --s3-prefix user-service \
    --output-template-file packaged-template.yml || die "CloudFormation package failed"
