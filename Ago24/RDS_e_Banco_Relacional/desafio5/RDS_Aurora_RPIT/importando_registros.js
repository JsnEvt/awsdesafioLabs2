//Gerando um arquivo CSV usando um script em Node.js para gerar 
//2000000 de registros para preencher as tabelas para simular um ambiente
//com milhares de registros para manipulacao

const fs = require('fs');
const { v4: uuidv4 } = require('uuid');

const stream = fs.createWriteStream('tarefas.csv');
const numRecords = 1000000
const now = new Date().toISOString();

for (let i = 0; i < numRecords; i++) {
  const uuid = uuidv4();
  const titulo = `Tarefa ${i}`;
  const dia_atividade = '2024-09-09';
  const importante = Math.random() < 0.5;
  stream.write(`${uuid},${titulo},${dia_atividade},${importante},${now},${now}\n`);
}

stream.end();

//Apos a criacao faremos o carregamento no PostgreSQL:
// psql -d your_database_namw -c "\COPY public.\"Tarefas\" FROM 'tarefas.csv' DELIMITER ',' CSV"