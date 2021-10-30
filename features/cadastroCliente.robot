***Settings***
Resource       ${EXECDIR}/resources/main.resource
Resource       ${EXECDIR}/resources/keywords/cadastroCliente.robot
Test Setup     Abrir navegador
Test Teardown  Close Browser

***Test Cases***
Caso de teste 04: Cadastrar Cliente
  [Tags]  tc04  cadastro_cliente
  Dado que estou na página de login do site Automation Practice
  Quando informo um e-mail válido
  E clico em Create an account
  E preencho os campos obrigatórios
  E clico no botão register
  Então o cadastro é realizado com sucesso
