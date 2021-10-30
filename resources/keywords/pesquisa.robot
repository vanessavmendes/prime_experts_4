***Variables***
${campoBusca}    css=input[id="search_query_top"]
${btnPesquisar}  css=button[name="submit_search"]

***Keywords***
Quando pesquiso pelo produto "${produto}"
  Wait Until Element Is Visible  ${campoBusca}
  Input Text     ${campoBusca}   ${produto}
  Click Element  ${btnPesquisar}

Então o produto "Blouse" é listado no site
  Wait Until Element Is Visible  css=img[title="Blouse"]
  Page Should Contain Element    css=img[title="Blouse"]

Então deve retornar a mensagem "${mensagem}"
  Element Text Should Be  css=p[class="alert alert-warning"]  ${mensagem}
  
