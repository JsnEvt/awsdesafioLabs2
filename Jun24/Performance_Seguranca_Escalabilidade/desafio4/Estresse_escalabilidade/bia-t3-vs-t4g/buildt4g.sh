ECR_REGISTRY="905418339132.dkr.ecr.us-east-1.amazonaws.com"
aws ecr get-login-password --region us-east-1 --profile jason | docker login --username AWS --password-stdin $ECR_REGISTRY
# docker build -t bia:t4g .
docker buildx build --platform linux/amd64 -t bia:t4g .
docker tag bia:t4g $ECR_REGISTRY/bia:t4g
docker push $ECR_REGISTRY/bia:t4g
