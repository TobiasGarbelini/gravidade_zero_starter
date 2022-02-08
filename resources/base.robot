*Settings*
Documentation       arquivo principal que será utilizado em todos os testes

Library     Browser
Library     String

Resource        actions.robot

*Variables*
${BASE_URL}     https://nbank.vercel.app/

*Keywords*
Start Session
    New Browser     chromium
    New Page        ${BASE_URL} 

End Session
    Take Screenshot