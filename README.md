## Automação da API ServeRest
O Projeto tem como objetivo demonstrar a automação dos serviços de Cadastro de Usuário e Consulta de Usuário por ID.


**🚀 Começando**

Estas instruções permitirão que você obtenha uma cópia do projeto em operação na sua máquina local para fins de teste.


**📋 Pré-requisitos**

Possuir a útilma versão do Robot Framework
Possuir Python e Gerenciador de Pacotes do Python (pip)
Possuir Libs Request Library


**🔧 Instalação**

Método de Instalação de todos os pré-requisitos citados acima:
  
  Caso não tenha o Python instalado, realizar o donwload da última versão : https://www.python.org › downloads e escolha a versão a ser utilizada na plataforma do sistema operacional do computador.
  
  Observação: Verifique a versão do python instalado no seu computador digitando:  pip--version
  
  ### Instalação do Robot Framework
        Abra o prompt de comando e digite:
          -Robot Framework : pip install robotframework
          -Para validar a instalação : robot --version 
  
  Crie uma pasta em qualquer diretório da máquina e salve o script de teste;
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

A execução irá gerar 3 arquivos com extensão em html, onde será possivel analisar os resultados e os logs gerados.
    
    log.html
    output.html
    report.html



