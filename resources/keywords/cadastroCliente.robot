***Variables***
${loginUrl}  http://automationpractice.com/index.php?controller=authentication&back=my-account

***Keywords***
Dado que estou na página de login do site Automation Practice
  Go To   ${loginUrl}
Quando informo um e-mail válido
  Wait Until Element Is Visible     css=input[id="email_create"]
  ${email}  Generate Random String  length=4  chars=[LETTERS][NUMBERS]
  Input Text  css=input[id="email_create"]  vanessa${email}@hotmail.com

E clico em Create an account
  Click Element                     css=button[id="SubmitCreate"]

E preencho os campos obrigatórios
  Wait Until Element Is Visible     css=input[id="customer_firstname"]
  Input Text  css=input[id="customer_firstname"]  Vanessa
  Input Text  css=input[id="customer_lastname"]   Silva
  Input Text  css=input[id="passwd"]  12345
  Input Text  css=input[id="address1"]  Rua central
  Input Text  css=input[id="city"]  Teixeira de Freitas
  Selecionar estado
  Input Text  css=input[id="postcode"]  12345
  Input Text  css=input[id="phone_mobile"]  7399999999

E clico no botão register
  Click Element  css=button[id="submitAccount"]

Então o cadastro é realizado com sucesso
  Page Should Contain Element  xpath=//*[@id="columns"]/div[1]/span[2]
  Capture Page Screenshot

Selecionar estado
   Set Selenium Speed  0.3
   Select From List By Value  id=id_state  5
   Set Selenium Speed  0
