*** Settings ***
Library  SeleniumLibrary  screenshot_root_directory=\Screenshots
Library  OperatingSystem
Resource  ./Page_Objects/BasePage.robot
Resource  ./Page_Objects/LoginPage.robot
Resource  ./Page_Objects/CartPage.robot
Resource  ./Page_Objects/ResultsPage.robot

*** Keywords ***
#### Home Page ####
User is in Notino site and is not logged in
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Title Should Be  Perfumy i kosmetyki online | Perfumeria iperfumy.pl → Notino
    Wait Until Element Is Visible  ${rodo}
    Click Element  ${rodo}
User is in Notino site and is logged in
    Open browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Title Should Be  Perfumy i kosmetyki online | Perfumeria iperfumy.pl → Notino
    Wait Until Element Is Visible  ${rodo}
    Click Element  ${rodo}
    Click Element  ${my_account_button}
    Input Text  ${login}  validnotinologin@onet.pl
    Input Text  ${password}  Validpassword.1
    Click Element  ${login_button}

#### Login test ####
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

#### Searching Test ####
User clicks the searching bar
    Click Element  ${search_input}
User try to search for 'HUGO alive'
    Input Text  ${search_input}  HUGO alive
User clicks the searching button
    Click Element  ${search_button}
User see the searching results page
    Wait Until Element Is Visible  ${searching_content}
    Element Should Contain  ${searching_content}  Wyniki wyszukiwania

#### Adding to Cart Test ####
User try to search for 'Black Opium'
    Input Text  ${search_input}  Black Opium
User clicks searching product
    Wait Until Page Contains Element  ${searching_product}
    Click Element  ${searching_product}
User see the product info page
    Wait Until Page Contains Element  ${add_to_cart_button}
    Page Should Contain Element  ${add_to_cart_button}
User clicks 'add to cart' button
    Click Button  ${add_to_cart_button}
    Wait Until Element Is Visible  ${go_to_cart}
User see "add to cart" confirmation window
    Click Element  ${go_to_cart}

#### CartPage Test ####
User go to the shopping cart page
    Click Element  ${cart_button}
    Wait Until Element Is Visible  ${shipping_insurance_select}
User clicks on insurance select
    Click Element  ${shipping_insurance_select}
User goes to purchase page and finish its order
    Click Element  ${deletion_button}
    Wait Until Element Is Not Visible  ${deletion_button}
User see home page title
    Title Should Be  Perfumy i kosmetyki online | Perfumeria iperfumy.pl → Notino

#### Header Clicks & Cheking Tests ####
############## Clicks #################
User clicks on 'Makijaż'
    Click Element  ${face_skin_button}
User clicks on 'Oczy'
    Click Element  ${eyes_button}
User clicks on 'Ciało'
    Click Element  ${body_button}
User clicks on 'Opalanie'
    Click Element  ${tanning_button}
User clicks on 'Mężczyźni'
    Click Element  ${men_button}
User clicks on 'Pielęgnacja brody'
    Click Element  ${beard_care_button}
User clicks on 'Olejki'
    Click Element  ${beard_oils_button}
User clicks on 'Dermokosmetyki'
    Click Element  ${dermocosmetics_button}
User clicks on 'Matka i dziecko'
    Click Element  ${mom_child_button}
User clicks on 'Pielęgnacja włosów dziecka'
    Click Element  ${child_skin_care_button}

############## Checks #################
User see 'Oczy' content
    Wait Until Element Is Visible  ${eyes_content}
    Page Should Contain  Kosmetyki do makijażu oczu
User see 'Opalanie' content
    Wait Until Element Is Visible  ${tanning_content}
    Page Should Contain  Opalanie
User see 'Olejki' content
    Wait Until Element Is Visible  ${beard_oils_content}
    Page Should Contain  Olejek do brody
User see 'Pielęgnacja włosów dziecka' content
    Wait Until Element Is Visible  ${child_skin_care_content}
    Page Should Contain  Pielęgnacja skóry dziecka

#### Footer Clicks & Cheking Tests ####
############## Clicks #################
User type email adress to newsletter input and clicks on men submit button
    Input Text  ${footer_newsletter}  validnotinologin@onet.pl
    Click Element  ${footer_man}
User clicks on 'Dane kontaktowe'
    Click Element  ${footer_contact}
User clicks on 'Sposób dostawy'
    Click Element  ${deliver_method_button}
User clicks on 'Osobiście' as a delivery method
    Click Element  ${personally_drop_down}
User clicks on location 'Plac Grunwaldzki'
    Click Element  ${footer_wroclaw_example}
User clicks on location 'Perfumeria Gdańsk'
    Click Element  ${footer_gdansk_example}
User clicks on 'Dlaczego Notino'
    Click Element  ${why_notino}
User clicks on Belgique language
    Click Element  ${belgique}
User clicks on French language
    Click Element  ${french}
User clicks on Instagram
    Click Element  ${instagram}
User clicks on Accept cookies on Instagram Page
    Click Element  @{instagram_confirmation_button}

############## Checks #################
User see Newsletter confirmation content
    Wait Until Element Is Visible  ${footer_newsletter_content}
    Page Should Contain  Dziękujemy za zainteresowanie
User see 'Kontakt' content
    Wait Until Element Is Visible  ${footer_contact_content}
    Page Should Contain  Kontakt
User see 'Osobiście' content
    Wait Until Element Is Visible  ${personally_drop_down_content}
    Page Should Contain  Twoje zamówienie zostanie dostarczone do wybranego
User see location 'Plac Grunwaldzki' content
    Wait Until Element Is Visible  ${footer_wroclaw_example_content}
    Page Should Contain  Perfumeria Wrocław
User see location 'Perfumeria Gdańsk' content
    Wait Until Element Is Visible  ${footer_gdansk_example_content}
    Page Should Contain  Perfumeria Gdańsk
User see 'Dlaczego Notino' content
    Wait Until Element Is Visible  ${why_notino_content}
    Page Should Contain  9 powodów dlaczego warto wybrać NOTINO
User see Belgique content Page
    Wait Until Element Is Visible  ${belgique_content}
    Title Should Be  Votre parfumerie en ligne notino.be - découvrez notre choix
User see French content Page
    Wait Until Element Is Visible  ${french_content}
    Title Should Be  Votre parfumerie en ligne notino.fr | découvrez notre choix
