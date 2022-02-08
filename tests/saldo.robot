*Settings*
Documentation       Suite de testes para verificar se o app está online e apresentando o saldo o usuário

Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   End Session

*Test Cases*
Deve exibir mensagem de saldo disponível
    On the home page