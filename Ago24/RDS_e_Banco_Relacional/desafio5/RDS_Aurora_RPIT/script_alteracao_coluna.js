//Alterando o tamanho da coluna, como teste, via sequelize
//npx sequelize migration:generate --name reduzir-coluna-titulo

/*
o comando ira gerar um arquivo que tera em si, adicionado o codigo que 
permitira alteracao da coluna. O codigo e este abaixo:
*/

'use strict';

module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.changeColumn('Tarefas', 'titulo', {
      type: Sequelize.STRING(100),
      allowNull: false,
    });
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.changeColumn('Tarefas', 'titulo', {
      type: Sequelize.STRING(255),
      allowNull: false,
    });
  }
};