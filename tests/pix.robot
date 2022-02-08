*Settings*
Documentation       Suite de testes para validar operações com pix

Library         ${EXECDIR}/resources/factories/pix.py

Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   End Session

*Test Cases*
Realizar pix
    &{pix}     Factory Valid Pix
    On the home page
    Go to pix modal
    Fill pix form                   ${pix}
    Pix successfully performed      ${pix}

Realizar pix zerado
    &{pix}     Factory Zero Pix
    On the home page
    Go to pix modal
    Fill pix form                   ${pix}
    Error message is displayed      ${pix}[message]

Realizar pix negativo
    &{pix}     Factory Negative Pix
    On the home page
    Go to pix modal
    Fill pix form                   ${pix}
    Error message is displayed      ${pix}[message]