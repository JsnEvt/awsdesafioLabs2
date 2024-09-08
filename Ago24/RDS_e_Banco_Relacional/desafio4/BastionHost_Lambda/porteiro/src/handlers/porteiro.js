/*
Enquanto o Terraform provisiona os recursos na AWS com o IAC(infrastructure-as-code)
o SAM(Serverless Application Model) serve como estrutura de funcoes que podem ser
implementadas em Lambdas na AWS para controlar/operar sobre os recursos criados no
provedor cloud para AUTOMATIZAR PROCESSOS.
*/

const AWS = require("aws-sdk");

AWS.config.update({ region: "us-east-1" });
const ec2 = new AWS.EC2({ apiVersion: "2016-11-15" });

const params = {
  InstanceIds: ["i-017cfa4264fba5419"],
};

// Função para iniciar instâncias EC2
function startEC2Instances() {
  return ec2.startInstances(params, function (err, data) {
    if (err) {
      console.log(err, err.stack);
    } else {
      console.log("Porteiro ligado com sucesso");
    }
  });
}

// Função para parar instâncias EC2
function stopEC2Instances() {
  return ec2.stopInstances(params, function (err, data) {
    if (err) {
      console.log(err, err.stack);
    } else {
      console.log("Porteiro desligado com sucesso");
    }
  });
}

// Exportando as funções corretamente
module.exports = { startEC2Instances, stopEC2Instances };
