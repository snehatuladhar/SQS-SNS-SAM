aws s3 mb s3://sneha-sam
#package cloudformation
aws cloudformation package --s3-bucket  sneha-sam --template-file template.yaml --output-template-file gen/template-generated.yaml
#deploy
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name hello-world-sneha --capabilities CAPABILITY_IAM