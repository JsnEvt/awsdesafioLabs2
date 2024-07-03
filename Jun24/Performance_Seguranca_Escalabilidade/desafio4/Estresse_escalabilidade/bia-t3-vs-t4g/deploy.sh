./build.sh
aws ecs update-service --cluster cluster-t3-alb --service service-t3-alb  --force-new-deployment