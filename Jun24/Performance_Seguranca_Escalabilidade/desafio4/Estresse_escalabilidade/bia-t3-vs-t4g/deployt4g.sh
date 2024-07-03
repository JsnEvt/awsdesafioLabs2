./buildt4g.sh
aws ecs update-service --cluster cluster-t4gmicro --service service-t4g  --force-new-deployment