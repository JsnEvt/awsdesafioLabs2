erro(){
  echo "######################################"
  echo "########### ERRO! ==> $1 ############";
  echo "######################################"
}

checar_ultimo_comando() {
  if [ $? != 0 ]; then
  erro "Erro no deploy. Paando tudo..."
  exit 1;
  fi
}