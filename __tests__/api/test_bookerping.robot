# Casos de Teste
#*** Variables ***  --> resources/variables.py
#*** Settings ***   --> resources/common.resource
#*** Test Cases ***   --> continuam no arquivo .robot
#*** Keywords ***     --> resources/common.resource 

# Casos de Teste 

*** Settings ***
Library    RequestsLibrary
Resource    ../../resources/common.resource
Variables    ../../resources/variables.py
Suite Setup    Create Token    ${url}

*** Test Cases ***

Get Booking Ping
    #${headers}    Create Dictionary    Content-type=${content_type}
    ${response}    GET    url=${url}/ping

    #${response_body}    Set Variable    ${response.json()}
    #Log To Console    ${response_body}
    

    Status Should Be    201

Get Booking ID 
    ${response}    GET    url=${url}/booking/

    ${response_body}    Set Variable    ${response.json()}
    Log To Console    ${response_body}
    

    Status Should Be    200

