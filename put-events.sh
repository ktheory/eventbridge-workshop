#!/bin/bash

set -e


generate_event() {
  cat << EOF
  {
    "Entries": [
        {
            "Source": "aaron.cli",
            "DetailType": "aaron.test",
            "Detail": "{\"sequence\": 123}",
            "EventBusName": "AaronDemoBus"
        }
    ]
  }
EOF
}
generate_event > events.json
aws events put-events --cli-input-json file://events.json

rm events.json
