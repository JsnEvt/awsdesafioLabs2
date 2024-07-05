./build.sh
aws ecs update-service --cluster clst1550 --service td-clst-alb1532  --force-new-deployment