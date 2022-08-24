***Settings***
Documentation           Cenarios de adicionar itens ao jardim
Resource                ../resources/resources.robot
Test Setup              inicialização do App
Test Teardown           finalizando app

***Test Cases***
Scenario: Validar que permite adicionar uma planta ao jardim através do Add Plant
    Dado que estou na tela inicial do app Sunflower
    Quando clico em AddPlant
    E o app Sunflower direciona à lista
    E escolho adicionar maçãs em meu jardim
    E clico em maças, abre-se a tela de descrição da mesma
    E clico no botão "+"
    Então recebo a informação que a planta foi adicionada ao jardim
    
Scenario: Validar que exibição de planta adicionada no jardim
    Dado que recebi a informação de planta adicionada ao jardim
    E clico no botão voltar na parte superior esquerda
    E novamente sou direcionado à lista
    Quando clico em My Garden
    Então vejo que a maçã foi adicionada em meu jardim

Scenario: Validar que permite adicionar nova planta através do Plant List
    Dado que estou na tela My Garden com maçã adicionada à minha lista
    E clico em Plant List
    E sou redirecionado à lista de plantas
    Quando escolho adicionar beterraba ao meu jardim
    E clico no botão de "+" para adicionar
    Então verifico que a beterraba está adicionada