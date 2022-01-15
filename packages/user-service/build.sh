#!/bin/bash

function buildLambda {
    declare lambda=$1
    cd $lambda
    npm run build || exit 1
    cd ..
}

declare -a lambdas=("create-user" "send-mail")

for lambda in "${lambdas[@]}"
do
    buildLambda $lambda
done
