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
    Open browser  ${URL}  ${BROWSER}
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
User try to search for 'Calvin Klein Euphoria'
    Input Text  ${search_input}  Calvin Klein Euphoria
User clicks searching product
    Wait Until Page Contains Element  ${searching_product}
    Click Element  ${searching_product}
User see the product info page
    Wait Until Page Contains Element  ${add_to_cart_button}
    Page Should Contain Element  ${add_to_cart_button}
User clicks 'add to cart' button
    Click Button  ${add_to_cart_button}
User see "add to cart" confirmation window
    Wait Until Element Is Visible  ${add_to_cart_confiration}
    Sleep  2s
    Wait Until Page Contains Element  ${add_to_cart_confiration}

#### CartPage Test ####
User go to the shopping cart page
    Click Element  ${cart_button}
User change the quantity (2) of ordered product
    Wait Until Element Is Visible  ${quantity_select}
    Click Element  ${quantity_select}
    Wait Until Element Is Visible  ${quantity_select_2}
    Click Element  ${quantity_select_2}
User clicks on insurance select
    Click Element  ${shipping_insurance_select}
    Sleep  2s
User unselect ecological package and select a gift wrap
    Click Element  ${wrap_ecologically_select}
    Click Element  ${wrap_as_git_select}
User see package personalisation pop-up, personalize own box and save the changes
    Wait Until Element Is Visible  ${personalisation_popup}
    Click Element  ${package_color_red}
    Sleep  2s
    Click Element  ${inside_box_select}
    Sleep  2s
    Click Element  ${save_box_button}
User input invalid discount code and see an error message
    Input Text  ${coupon_input}  A34gHi18
    Click Element  ${coupon_confirmation_button}
    Wait Until Element Is Visible  ${coupon_error_message}
    Element Should Contain  ${coupon_error_message}  Nieprawidłowy kod kupon. Kupon nie obowiązuje na produkty, które masz w swoim koszyku.
User goes to purchase page and finish its order
    Click Element  ${proceed_to_checkout_button}
    Wait Until Element Is Visible  ${upselling_confirmation}
    Page Should Contain  ${upselling_confirmation}
    
