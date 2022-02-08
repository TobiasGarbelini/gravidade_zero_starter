*Settings*
Documentation           Ações customizadas do nBank

*Keywords*
On the home page
    Wait For Elements State     css=.navbar-item >> text= Olá Papito, seu saldo é R$ 1000     visible     5

Go to pix modal
    Click   text=Fazer PIX
    Wait For Elements State     css=.modal-card-title >> text=PIX   visible     5

Fill pix form
    [Arguments]     ${pix}
    Select Options By           css=select               value       ${pix}[bank]
    Fill Text                   id=chave-pix     ${pix}[key]
    Fill Text                   id=valor     ${pix}[value]
    Click   css=button >> text=Enviar PIX

Pix successfully performed
    [Arguments]     ${pix}
    ${element}      Set Variable    xpath=//td[contains(text(), "${pix}[key]")]/.. 
    Wait For Elements State     css=.navbar-item >> text= Olá Papito, seu saldo é R$ 900     visible     5
    
    Wait For Elements State     ${element}       visible     5
    Get Text                    ${element}   contains       ${pix}[bank]
    Get Text                    ${element}   contains       ${pix}[value]


Error message is displayed
    [Arguments]     ${expected_message}
    ${element}      Set Variable        css=.message-body
    Wait For Elements State     ${element}  visible     5
    Get Text                    ${element}   equal       ${expected_message}
