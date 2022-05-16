aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set aws_session_token $AWS_SESSION_TOKEN

eb init udagram-api-env --platform node.js --region us-east-1
eb create --sample Udagramapienv-env
eb use Udagramapienv-env

eb setenv POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PORT=$POSTGRES_PORT PORT=$PORT POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME  POSTGRES_DB=$POSTGRES_DB AWS_REGION=$AWS_REGION AWS_BUCKET=$AWS_BUCKET URL=$URL AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY JWT_SECRET=$JWT_SECRET AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION AWS_PROFILE=$AWS_PROFILE AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN  aws_access_key_id=$aws_access_key_id aws_secret_access_key=$aws_secret_access_key	aws_session_token=$aws_session_token

eb deploy
