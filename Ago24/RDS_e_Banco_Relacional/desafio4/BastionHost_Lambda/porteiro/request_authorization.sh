#script valido caso NAO se use o Elastic IP dentro da AWS.
#scritp para recuperar o ip da instancia para que, quando reiniciada devido a 
#instrucao lambda o IP possa ser recuperado automaticamente para poder se cominicar.
instance_id_porteiro=i-017cfa4264fba5419
ip_porteiro=$(aws ec2 describe-instances --instance-ids $instance_id_porteiro --query "Reservations[].Instances[].PublicIpAddress" --profile jason --region us-east-1 --output json | grep -vE '\[|\]' | awk -F'"' '{ print $2 }')


PEM_PATH="/PATH_SUA_CHAVE_PEM"
SERVIDOR_RDS_1=SEU_SERVIDOR_1
PORTA_LOCAL_RDS_1=3307
SERVIDOR_RDS_2=SEU_SERVIDOR_2
PORTA_LOCAL_RDS_2=5433

#o formato descrito no final da instrucao anterior: grep -vE '\[|\]' | aws -F'"' '{print $2}' serve apenas para retornar
#a informacao da instancia na formatacao necessaria para preenchimento dos campos associados.

echo $ip_porteiro

#nao convem usar a mesma chave.pem para funcoes destinadas apenas ao porteiro

#A abertura se dara com a instrucao abaixo:
#ssh -f -N -i #PEM_PATH ec2-user@ip_porteiro -L PORTA_LOCAL_RDS_1:$SERVIDOR_RDS_1:3306 -L $PORTA_LOCAL_RDS_2:$SERVIDOR_RDS_2:5432

echo "Porteiro liberou acesso para:"
echo "> $SERVIDOR_RDS_1 no endereço *127.0.0.1:$PORTA_LOCAL_RDS_1"
echo "> $SERVIDOR_RDS_2 no endereço *127.0.0.1:$PORTA_LOCAL_RDS_2"

#Apos a conexao bem estabelecida, podemos acessar, por exeplo, o banco de dados e verfificar o
#acesso atraves do DBeaver.