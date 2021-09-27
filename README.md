## Automação da API ServeRest
Projeto tem como objetivo demonstrar a automação dos serviços de Cadastro de Usuário e Consulta de Usuário por ID.


**🚀 Começando**

Essas instruções permitirão que você obtenha uma cópia do projeto em operação na sua máquina local para fins de teste.

Consulte Implantação para saber como implantar o projeto.

**📋 Pré-requisitos**

Possuir Robot Framework
Possuir Python e Gerenciador de Pacotes do Python (pip)
Possuir Libs Request Library


**🔧 Instalação**

Método de Instalação de todos os pré-requisitos citados acima:
  
  Caso não tenha o Python instalado, realizar o donwload da última versão : https://www.python.org › downloads
  
  ### Instalação do Robot Framework
        Abrir prompt de comando e digitar:
          -Robot Framework : pip install robotframework
          -Para validar a instalação : robot --version 
  
  Criar uma pasta em qualquer diretório da máquina e salvar o script de teste;
  Ex: C:\robot\testcases.robot  
  
  **Importante:** a extensão do script deve ser **.robot**
  
  Ex: testcases.robot
  


**⚙️ Executando os testes**

Abrir prompt de comando abrir a pasta criada, onde foi armazenado o script de teste e digitar o seguinte comando : 

    robot "nome_do_script".robot
    
Na tela do CMD, ele irá gerar o resultado dos testes, conforme exemplo abaixo:


#### Cenario de Teste 01 : Cadastro de Usuario  | PASS |

#### Cenario de Teste 02: Consulta de Usuário   | PASS |
    
    
**🔩 Analise os resultados dos testes**

A execução irá gerar 3 OUT´s, onde será possivel analisar os resultados e os logs gerados.
    
    log.html
    output.html
    report.html



