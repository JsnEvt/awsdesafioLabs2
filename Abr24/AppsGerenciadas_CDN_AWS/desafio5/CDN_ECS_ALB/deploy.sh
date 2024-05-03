./build.sh
aws ecs update-service --cluster arn:aws:ecs:us-east-1:905418339132:cluster/biacdnalb --service bia_wordpress_service  --force-new-deployment