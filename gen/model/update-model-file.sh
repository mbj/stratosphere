#!/usr/bin/env bash

# Downloads the latest model file

rm CloudFormationResourceSpecification.json
wget https://d1uauaxba7bl26.cloudfront.net/latest/CloudFormationResourceSpecification.json
jq -S -f normalize.jq CloudFormationResourceSpecification.json > sorted-spec.json
