#!/bin/bash

set -e

URL=https://sqs.us-west-2.amazonaws.com/066179286965/DemoQueue

aws sqs receive-message --queue-url $URL --attribute-names All --max-number-of-messages 1 --wait-time-seconds 10 --output json > /tmp/message.json #--query 'Messages[0].Body' | jq '. | fromjson | .Message | fromjson'
handle=$(cat /tmp/message.json | jq -r '.Messages[0].ReceiptHandle')

aws sqs delete-message --queue-url $URL --receipt-handle $handle

# cat /tmp/message.json | jq -r '.Messages[0].Body | fromjson | .Message | fromjson'
cat /tmp/message.json | jq -r

rm /tmp/message.json
