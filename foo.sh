#!/bin/sh

aws cloudformation create-stack --stack-name smsmpipeline2 \
    --template-body file:///Users/sandro/projects/allcloud/sagemaker-pipeline/CodePipeline/pipeline.yaml \
    --parameters ParameterKey=Email,ParameterValue="sandro.manke@allcloud.io" ParameterKey=GitHubToken,ParameterValue="5ba36a4e97bb165ca5b337dad8db1d71a4c4d9b4" ParameterKey=GitHubUser,ParameterValue="sandrom-allcloud" \
    --capabilities CAPABILITY_NAMED_IAM \
    --profile sandro-sandbox \
    --region us-east-1
