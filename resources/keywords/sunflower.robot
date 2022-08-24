***Settings***
Documentation           Keywords principais do projeto de automação
Library                 AppiumLibrary

***Keywords***
Dado que estou na tela inicial do app Sunflower
    Wait Until Page Contains        Your garden is empty   

Quando clico em AddPlant
    Click Element                   ${ADDPLANTA}

E o app Sunflower direciona à lista
    Wait Until Element Is Visible   ${BOTAO_LISTA}

E clico no botão "+"
    Click Element                   ${BOTAO_MAIS}

E clico em Plant List
   Click Element                    ${BOTAO_LISTA} 

Quando clico em My Garden
    Click Element                   ${BOTAO_JARDIM}

Então estou na lista de plantas
    Wait Until Page Contains    Apple