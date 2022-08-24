# Sunflower App
Projeto de automação de testes utilizando o framework de testes ROBOT FRAMEWORK

# O projeto está organizado da seguinte maneira:

- Os cenarios estão na pasta "tests".
- Os keywords utilizados no projeto estão na pasta "resources/keywords".
- Os recursos serão importados a partir do arquivo de configuração "resources.robot"



# Como Executar:

Com o projeto baixado na sua IDEAL preferida, com o emulador inicado e com o appium apontado para o seguinte host: http://localhost:4723/wd/hub

Você pode executar os seguintes comandos para instalação do projeto:
- pip install pipenv
- pipenv install
- pipenv shell

Para executar os cenarios, execute na linha de comando:
- pipenv run robot -d results tests/sunflower.robot