***Settings***
Resource       ${EXECDIR}/resources/main.resource
Resource       ${EXECDIR}/resources/keywords/listarProduto.robot
Test Setup     Abrir navegador
Test Teardown  Close Browser


***Test Cases***
Caso de teste 03: Listar Produtos
  [Tags]  tc03  listar_produtos
  Dado que estou na página home do site Automation Practice
  Quando clico na subcategoria "summer Dresses" da categoria "Women"
  Então produtos da subcategoria selecionada são exibidos