API_ENDPOINT=http://biaebcdnenv.us-east-1.elasticbeanstalk.com
REACT_APP_API_URL=$API_ENDPOINT SKIP_PREFLIGHT_CHECK=true npm run build --prefix client
echo '>> Fazendo deploy dos assets'
aws s3 sync client/build s3://bucketbiacdn --exclude "index.html" --profile jason
echo 'Finalizado'
echo '>> Fazendo deploy do index.html'
aws s3 sync client/build s3://bucketbiacdn --exclude "*" --include "index.html" --profile jason
echo '>> Deploy finalizado'