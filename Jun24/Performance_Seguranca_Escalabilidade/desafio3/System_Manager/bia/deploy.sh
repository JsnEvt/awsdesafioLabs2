./build.sh
aws ecs update-service --cluster cls-secrets1 --service serv-system-manager  --force-new-deployment --profile jason
# eb deploy --staged --profile jason