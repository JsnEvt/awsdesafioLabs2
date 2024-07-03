ECR_REGISTRY=""
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_REGISTRY
#docker build -t bia .
docker buildx build --platform linux/amd64 -t bia:t3 .
docker tag bia:t3 $ECR_REGISTRY/bia:t3
docker push $ECR_REGISTRY/bia:t3
