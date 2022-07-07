# EventBridge Workshop

Based on [this AWS workshop](https://catalog.us-east-1.prod.workshops.aws/workshops/63320e83-6abc-493d-83d8-f822584fb3cb/en-US/getting-started/self-hosted)

CloudFormation template source:

https://aws-event-driven-architecture-workshop-assets.s3.amazonaws.com/master-v2.yaml

```bash
# Deploy
aws cloudformation deploy \
  --template-file ./aaron.yaml \
  --stack-name aaron-eventbus-demo \
  --capabilities CAPABILITY_IAM
```

```
# Generate Events
aws events put-events --entries=Source=aaron-cli,DetailType=aaron.test,Detail='{"sequence": 123}',EventBusName=AaronDemoBus,TraceHeader=`uuidgen`
```

```
# Consume events

```
