***Settings***
Resource       ${EXECDIR}/resources/main.resource
Resource       ${EXECDIR}/resources/keywords/pesquisa.robot
Test Setup     Abrir navegador
Test Teardown  Close Browser

***Test Cases***
Caso de teste 01: Pesquisar produto existente
   [Tags]  tc01  pesquisar
   Dado que estou na página home do site Automation Practice
   Quando pesquiso pelo produto "Blouse"
   Então o produto "Blouse" é listado no site

Caso de teste 02: Pesquisar produto não existente
   [Tags]  tc02  pesquisar
   Dado que estou na página home do site Automation Practice
   Quando pesquiso pelo produto "itemNãoExistente"
   Então deve retornar a mensagem "No results were found for your search "itemNãoExistente""