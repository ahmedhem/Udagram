aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set aws_session_token $AWS_SESSION_TOKEN

eb init udagram-api-env --platform node.js --region us-east-1
eb use Udagramapienv-env

eb deploy
