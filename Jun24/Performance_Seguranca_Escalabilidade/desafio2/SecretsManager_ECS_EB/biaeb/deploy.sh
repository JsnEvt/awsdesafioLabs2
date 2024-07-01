./build.sh
aws ecs update-service --cluster cls-secrets1 --service serv-cls-bia  --force-new-deployment --profile jason
# eb deploy --staged --profile jason