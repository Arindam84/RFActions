*** Settings ***
Library    SeleniumLibrary
Resource    
*** Variables ***
${validUserName}    Atestuser11
${validPassword}    Atestuser11!
${invalidUserName}    Atestuser12
${invalidPassword}    Atestuser12!
${invalidPassword_errorMessage}    Wrong password.


*** Test Cases ***
Verify That A Registered User Can Login To The Application Using The Correct Password
    Submit Login Information    ${validUserName}  ${validPassword}
    Username Should Be Visible On The Navigation Bar    ${validUserName}

Verify That A Registered User Can Not Login To The Application Using The Correct User Name but Wrong Password
    Submit Login Information    ${validUserName}  ${invalidPassword}
    User Should See An Alert With The Error Message    ${invalidPassword_errorMessage}



    
