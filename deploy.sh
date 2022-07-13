#!/bin/bash

set -e

aws cloudformation deploy \
  --template-file ./aaron.yaml \
  --stack-name aaron-eventbus-demo \
  --capabilities CAPABILITY_IAM
