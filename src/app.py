import boto3, os

sns = boto3.client('sns')

def lambda_handler(event,context):
    response = sns.publish(
      TopicArn= os.environ['SNS_ARN'],
      Message="An image was uploaded to the S3 bucket"
      )
    print("Message published")
    return response