*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  RequestsLibrary
Resource  Resources/Locators.robot\

*** Test Cases ***
Invalid login
    Open browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Element  ${my_account_button}
    Input Text  ${login}  Example@wp.pl
    Input Text  ${password}  Example
    Click Button  ${login_button}
    Element Should Contain  ${error_message}  Błąd logowania – nieprawidłowy e-mail/hasło.
    Close Browser
    
    