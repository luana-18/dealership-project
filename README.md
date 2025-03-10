#  Concessionária de Veículos - Sistema de Gestão
Este projeto visa otimizar a administração de uma concessionária de veículos, oferecendo uma maneira eficiente de gerenciar carros, clientes, funcionários, vendas, pagamentos e estoque. O sistema tem como objetivo melhorar a organização interna da concessionária e fornecer funcionalidades para facilitar as operações do dia a dia.

Funcionalidades:
Gestão de Carros
O sistema permite o cadastro, edição e exclusão de veículos disponíveis para venda. As informações dos carros incluem marca, modelo, ano, preço e status (disponível ou vendido).

Gerenciamento de Clientes
O sistema permite o cadastro de clientes, com o armazenamento de dados pessoais e informações de vendas anteriores, facilitando a comunicação e o gerenciamento de relacionamento com o cliente.

Gestão de Funcionários
O administrador pode cadastrar, editar e excluir funcionários, além de poder controlar suas informações como cargos, horários de trabalho e tarefas atribuídas.

Controle de Vendas e Pagamentos
O sistema oferece um módulo completo para gerenciar as vendas realizadas na concessionária, além de controlar os pagamentos efetuados, com visualização do status de cada transação (pago, pendente, etc.).

Controle de Estoque
A funcionalidade de estoque permite o controle da quantidade de veículos disponíveis na concessionária e a atualização conforme as vendas são realizadas.


#  Passo a Passo para Executar o Projeto

VERIFICAR O NODE.JS

Antes de iniciar o projeto, verifique se o Node.js está instalado no seu sistema. 

Caso ainda não tenha instalado, [Clique aqui](https://nodejs.org/) para fazer o download.

INSTALAR O NEDOMON

Abra sua IDE (Ambiente de Desenvolvimento Integrado) e instale a dependência nodemon para facilitar a execução do código. Utilize o seguinte comando no terminal:

npm install --save nodemon

O nodemon permite que o servidor seja reiniciado automaticamente sempre que alterações forem feitas no código, evitando a necessidade de fechar e reabrir o terminal manualmente.

CONFIGURAR O BANCO DE DADOS

O projeto está integrado a um banco de dados, e para configurá-lo corretamente, você precisará de um ambiente de desenvolvimento local.

- Baixe o arquivo do banco de dados disponível.
- Instale o XAMPP, que inclui o MySQL e o Apache, essenciais para a execução do banco de dados.
- Crie um banco de dados com o nome tbconcessionaria para garantir a compatibilidade com o sistema.
  
EXECUTAR O PROJETO

Com o banco de dados configurado e o ambiente pronto, abra um terminal na sua IDE e execute o comando:

npx nodemon server

Assim que o servidor estiver rodando, acesse o navegador e entre no seguinte endereço:

localhost:3000/(nome da tabela)

