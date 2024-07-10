#Scripts S3
#Fonte: https://docs.aws.amazon.com/cli/latest/reference/s3/

#ls
#listagem dos buckets
aws s3 ls

#listagem dos arquivos do bucket
aws s3 ls s3://automacaojs

#presign - para compartilhar o arquivo com uma URL assinada.
#Defaul 3600 seg.
aws s3 presign s3://automacaojs/arquivo1.txt
#para que o arquivo fique disponivel por um tempo muito curto:
aws s3 presign s3://automacaojs/arquivo1.txt --expires-in 10

#CP
aws s3 cp /tmp/backup/arquivo1.txt s3://automacaojs/
aws s3 cp s3://automacaojs/arquivo2.txt /tmp/backup/
#Storage-class que serve para definir as formas de armazenamento e os precos dos arquivos. / dryrun para ver a resposta
#do comando (o comando rodara sem efeito)
aws s3 cp /tmp/backup/arquivo1.txt s3://automacaojs/ --storage-class STANDARD_IA --dryrun

#SYNC
aws s3 sync /tmp/backup s3://automacaojs 
#O sincronismo da estrutura remota com a local tambem e permitido.
aws s3 sync s3://automacaojs/ /tmp/backup --storage-class STANDARD_IA
#O delete ocorre nas duas direcoes.