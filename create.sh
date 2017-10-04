#!/bin/bash

GITHUB_TOKEN="$1"

aws cloudformation create-stack --stack-name test-codepipeline --template-body file://codepipeline.cfn.yml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters \
    ParameterKey=GitHubToken,ParameterValue=${GITHUB_TOKEN}
