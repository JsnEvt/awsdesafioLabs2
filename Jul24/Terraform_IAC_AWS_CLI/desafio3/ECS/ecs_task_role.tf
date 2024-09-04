/*
a criacao desta role visa recuperar a secrets e usar na task definition
do ecs
METAFORICAMENTE FALANDO: PRIMEIRO BLOCO - SETOR DE VALIDADE DA ROLE = ECS 
*/
data "aws_iam_policy_document" "ecs_task_role" {
  statement {
    actions = ["sts:AssumeRole"]
    effect  = "Allow"

    principals {
      type        = "Service"
      identifiers = ["ecs-tasks.amazonaws.com"]
    }
  }
}

//SEGUNDO = DOCUMENTO QUE CONCEDE A PERMISSAO ESPECIFICA = OBTENCAO DO VALOR DA SECRET
resource "aws_iam_policy" "get_secret_biadbnv" {
  name        = "GetSecretBiaDBnv"
  description = "Policy para recuperar a secrets da biadbnv"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "secretsmanager:GetSecretValue"
        ],
        Effect   = "Allow",
        Resource = "${tolist(aws_db_instance.biadbnv.master_user_secret)[0].secret_arn}"
      }
    ]
  })
}

//TERCEIRO = QUEM ESTIVER NO SETOR ESPECIFICADO TERA O NOME "bia-ecs-task-role"
//NA TASK DEFINITION, A ROLE ABAIXO E ANEXADA
resource "aws_iam_role" "ecs_task_role" {
  name_prefix        = "bia-ecs-task-role"
  assume_role_policy = data.aws_iam_policy_document.ecs_task_role.json
}

//QUARTO = A MAQUINA TERA ANEXADO A SI AS REGRAS DESCRITAS NA POLICY_ARN
resource "aws_iam_role_policy_attachment" "ecs_task_role_policy" {
  role       = aws_iam_role.ecs_task_role.name
  policy_arn = aws_iam_policy.get_secret_biadbnv.arn
}
