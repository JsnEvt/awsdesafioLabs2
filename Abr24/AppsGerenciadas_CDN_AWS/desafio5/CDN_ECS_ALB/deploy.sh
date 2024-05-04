./build.sh
aws ecs update-service --cluster cdnalb --service serv-task-def1  --force-new-deployment