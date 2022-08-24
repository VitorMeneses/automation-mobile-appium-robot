***Settings***
Documentation                   Keywords genericas
Library                         AppiumLibrary

***Keywords***
inicialização do App
    Set Appium Timeout          15
    Open Application            http://localhost:4723/wd/hub
    ...                         automationName=UiAutomator2
    ...                         platformName=Android
    ...                         deviceName=emulator-5554
    ...                         app=${EXECDIR}/app/sunflower.apk
    ...                         udid=emulator-5554
    Wait Until Page Contains    Sunflower

finalizando app
    Close Application

E escolho adicionar maçãs em meu jardim
    Click Element                   ${MAÇA}

E clico em maças, abre-se a tela de descrição da mesma
    Wait Until Element Is Visible   ${BOTAO_MAIS}
    
Então recebo a informação que a planta foi adicionada ao jardim
    Wait Until Page Contains        Added plant to garden

Dado que recebi a informação de planta adicionada ao jardim
    Wait Until Page Contains        Your garden is empty   
    Click Element                   ${ADDPLANTA}
    Wait Until Element Is Visible   ${BOTAO_LISTA}
    Click Element                   ${MAÇA}
    Wait Until Element Is Visible   ${BOTAO_MAIS}
    Click Element                   ${BOTAO_MAIS}
    Wait Until Page Contains        Added plant to garden

E clico no botão voltar na parte superior esquerda
    Click Element                   ${BOTAO_VOLTAR}
    
E novamente sou direcionado à lista
    Wait Until Element Is Visible   ${BOTAO_LISTA}

Então vejo que a maçã foi adicionada em meu jardim
    Wait Until Element Is Visible   ${MEUJARDIM}

Dado que estou na tela My Garden com maçã adicionada à minha lista

    Wait Until Page Contains        Your garden is empty   
    Click Element                   ${ADDPLANTA}
    Wait Until Element Is Visible   ${BOTAO_LISTA}
    Click Element                   ${MAÇA}
    Wait Until Element Is Visible   ${BOTAO_MAIS}
    Click Element                   ${BOTAO_MAIS}
    Wait Until Page Contains        Added plant to garden
    Click Element                   ${BOTAO_VOLTAR}
    Wait Until Element Is Visible   ${BOTAO_LISTA}
    Click Element                   ${BOTAO_JARDIM}
    Wait Until Element Is Visible   ${MEUJARDIM}

E sou redirecionado à lista de plantas
    Wait Until Element Is Visible   ${LISTA_PLANTA}

Quando escolho adicionar beterraba ao meu jardim
    Click Element                   ${BEET}
    Wait Until Element Is Visible   ${BOTAO_MAIS}
    
E clico no botão de "+" para adicionar
    Click Element                   ${BOTAO_MAIS}
    Wait Until Page Contains        Added plant to garden

Então verifico que a beterraba está adicionada
    Click Element                   ${BOTAO_VOLTAR}
    Wait Until Element Is Visible   ${LISTA_PLANTA}
    Click Element                   ${BOTAO_JARDIM}
    Wait Until Element Is Visible   ${MEUJARDIM}
