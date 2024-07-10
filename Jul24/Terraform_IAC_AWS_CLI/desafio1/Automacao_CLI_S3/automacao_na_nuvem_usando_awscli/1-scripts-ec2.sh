#Atividade realizada no desafio um do modulo de Terraform. 
#Usando um container para criar a estrutura que permite o acesso aos recursos
#da AWS e poder manipula-los.

#Para isso, o container foi criado instalando o aws-cli e o plugin do session
#manager para acesso remoto. Em seguida foram colocadas as variaveis de ambiente
#do usuario para o acesso a conta da AWS usando o comando aws configure.

#O volume foi definido dentro do docker-compose ja que o arquivo run_docker 
#nao estava funcionando nesta operacao.

#O projeto BIA foi baixado dentro do container para fazer os testes de scripts
#e conectar a instancia remota.

#Script RUN
aws ec2 run-instances --image-id ami-07832e309d3f756c8 --instance-type t2.micro --key-name aws_linux --securtity-group-ids sg-0c4d15e6828b74075 --subnet-id subnet-04c6b62d8f1bde35e --region us-east-1 --count 1 --tag-especifications 'ResourceType=instance,Tags=[{key=grupo,Value=automacao-cli}]'

#Script filter e Query
aws ec2 describe-instances --filters "Name=tag:grupo,Values=automacao-cli" --query "Reservations[*].Instances[*][InstanceId,ImageId,Tags[?key=='grupo'].Value]"

#Script stop instances
instance_ids=$(aws ec2 describe-instances --filters "Name=tag:grupo,Values=automacao-cli" --query "Reservations[*].Instances[*][InstanceId,ImageId,Tags[?key=='grupo'].Value]")
instance_ids=$(aws ec2 describe-instances --filters "Name=tag:grupo,Values=automacao-cli" --query "Reservations[*].Instances[*][InstanceId]" | tr -d ] | tr -d [ | tr -d , | tr -d '"')
aws ec2 stop-instances --instance-ids $instance_ids --output table

#Script start
aws ec2 start-instances --instance-ids $instance_ids --output table

#Script terminate
aws ec2 terminate-instances --instance-ids $instance_ids --output table