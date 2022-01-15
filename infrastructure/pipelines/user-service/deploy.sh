#!/bin/bash

function die {
    declare MSG="$@"
    echo -e "$0: Error: $MSG">&2
    exit 1
}

aws cloudformation deploy \
    --template-file template.yml \
    --stack-name UserServicePipeline \
    --capabilities CAPABILITY_NAMED_IAM || die 'CloudFormation Deploy Failed'
