***Keywords***
Quando clico na subcategoria "summer Dresses" da categoria "Women"
  Mouse Over                     css=a[title="Women"]
  Wait Until Element Is Visible  xpath=//div[@id="block_top_menu"]//a[@title="Summer Dresses"] 
  Click Element                  xpath=//div[@id="block_top_menu"]//a[@title="Summer Dresses"] 

Então produtos da subcategoria selecionada são exibidos
  Wait Until Element Is Visible  xpath=//span[contains(text(), "Summer Dresses")][@class="cat-name"]
  Wait Until Element Is Visible  xpath=//*[@id="center_column"]/ul/li[1]/div/div[1]/div/a[1]/img
  Page Should Contain Element    xpath=//*[@id="center_column"]/ul/li[1]/div/div[1]/div/a[1]/img
  Page Should Contain Element    xpath=//*[@id="center_column"]/ul/li[2]/div/div[1]/div/a[1]/img
  Page Should Contain Element    xpath=//*[@id="center_column"]/ul/li[3]/div/div[1]/div/a[1]/img