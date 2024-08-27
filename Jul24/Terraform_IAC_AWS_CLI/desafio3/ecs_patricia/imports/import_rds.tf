//importação por bloco
//depois do import, deletar este arquivo  
//terraform plan -generate-config-out=out_db.tf
import {
  id = "bia"
  to = aws_db_instance.bia
}