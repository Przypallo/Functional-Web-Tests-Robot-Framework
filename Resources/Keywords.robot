*** Settings ***
Library  SeleniumLibrary  screenshot_root_directory=\Screenshots
Library  OperatingSystem

*** Keywords ***
User is in Notino site and is not logged in
    Open browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Title Should Be  Perfumy i kosmetyki online | Perfumeria iperfumy.pl → Notino
User move to the login site
    Click Element  ${my_account_button}
User inputs the username
    Input Text  ${login}  validnotinologin@onet.pl
User inputs the password
    Input Text  ${password}  Validpassword.1
User clicks the login button
    Click Element  ${login_button}
User see its username on mynotino page
    Page Should Contain Element  ${username}
User inputs the invalid username
    Input Text  ${login}  invalidnotinologin@onet.pl
User inputs the invalid password
    Input Text  ${password}  Invalidpassword.1
User see an error message about incorrect log in credentials
    Wait Until Element Is Visible  ${error_message}
    Element Should Contain  ${error_message}  Błąd logowania – nieprawidłowy e-mail/hasło.