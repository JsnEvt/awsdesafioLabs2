ECR_REGISTRY=""
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_REGISTRY
docker build -t bia:t4g .
docker tag bia:t4g $ECR_REGISTRY/bia:t4g
docker push $ECR_REGISTRY/bia:t4g
