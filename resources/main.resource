***Settings***
Library   SeleniumLibrary
Library   String

***Variables***
${browser}   firefox
${url}       http://automationpractice.com/index.php

***Keywords***
Abrir navegador
  Open Browser  browser=firefox
  Maximize Browser Window
  Set Selenium Timeout  30

Dado que estou na página home do site Automation Practice
  Go To  ${url}
  Wait Until Element Is Visible    css=img[class="logo img-responsive"]

