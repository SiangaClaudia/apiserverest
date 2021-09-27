*** Settings ***
Documentation   Testes de API - https://serverest.dev/
Library         RequestsLibrary
Library         Collections
Library         FakerLibrary   locale=pt_br


*** Variables ***
${ALIAS}   API_serverest


*** Test Cases ***

Cenario Teste 01 : Cadastro de Usuario
    Iniciar sessão na API serverest
    Cadastrar usuário de teste
    Obter Token

Cenario Teste 02 : Consulta de Usuario
    Listar o usuario cadastrado
  


*** Keywords ***
Cria dados de usuário
    ${RANDOM_NOME}                      FakerLibrary.Name
    ${RANDOM_EMAIL}                     FakerLibrary.Email
    ${RANDOM_PWD}                       FakerLibrary.Password
    ${USUARIO}                          Create Dictionary    nome=${RANDOM_NOME}  email=${RANDOM_EMAIL}  senha=${RANDOM_PWD}
    Set Suite Variable                  ${USUARIO}

Iniciar sessão na API serverest
    ${HEADERS}                          Create Dictionary  Content-Type=application/json
    Create Session                      alias=${ALIAS}    url=https://serverest.dev   headers=${HEADERS}   disable_warnings=1

Cadastrar usuário de teste
    Cria dados de usuário
    ${BODY}                             Create Dictionary   nome=${USUARIO.nome}   email=${USUARIO.email}   password=${USUARIO.senha}   administrador=true
    ${RESPONSE}                         POST On Session     alias=${ALIAS}    url=usuarios    json=${BODY}
    Log                                 Resposta Retornada: ${\n}${RESPONSE.text}
    ${ID_USUARIO_CADASTRADO}            Get From Dictionary    ${RESPONSE.json()}    _id
    Set Suite Variable                  ${ID_USUARIO_CADASTRADO}

Obter Token
    ${BODY}                             Create Dictionary   email=${USUARIO.email}   password=${USUARIO.senha}
    ${RESPONSE}                         POST On Session     alias=${ALIAS}    url=login    json=${BODY}
    Log                                 Resposta Retornada: ${\n}${RESPONSE.text}
    Dictionary Should Contain Item      ${RESPONSE.json()}    message    Login realizado com sucesso
    ${TOKEN}     Get From Dictionary    ${RESPONSE.json()}    authorization
    Set Suite Variable                  ${TOKEN}

Listar o usuario cadastrado
    ${HEADERS}                          Create Dictionary      Authorization=${TOKEN}
    ${PARAMS}                           Create Dictionary      _id=${ID_USUARIO_CADASTRADO}
    ${RESPONSE}                         GET On Session         alias=${ALIAS}    url=usuarios   params=${PARAMS}  headers=${HEADERS}
    Log   Resposta Retornada: ${\n}${RESPONSE.text}
    
   