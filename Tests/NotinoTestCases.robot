*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
#Resource  ../Resources/Locators.robot

*** Test Cases ***
Valid login
    [Tags]  Valid
    [Documentation]  This test case check what happenes when user type valid credentials
    Given User is in Notino site and is not logged in
    When User move to the login site
    And User inputs the username
    And User inputs the password
    And User clicks the login button
    Then User see its username on mynotino page
    [Teardown]  Close Browser

Invalid login
    [Tags]  Invalid
    [Documentation]  This test case check what happenes when user type invalid credentials
    Given User is in Notino site and is not logged in
    When User move to the login site
    And User inputs the invalid username
    And User inputs the invalid password
    And User clicks the login button
    Then User see an error message about incorrect log in credentials
    [Teardown]  Close Browser

Searching
    [Tags]  Searching
    [Documentation]  This test case check correctness of searching
    Given User is in Notino site and is not logged in
    When User clicks the searching bar
    And User try to search for 'HUGO alive'
    And User clicks the searching button
    Then User see the searching results page
    [Teardown]  Close Browser

Adding to cart some product
    [Tags]  Adding
    [Documentation]  This test case search some product and add it to the shopping cart
    Given User is in Notino site and is not logged in
    When User clicks the searching bar
    And User try to search for 'Calvin Klein Euphoria'
    And User clicks the searching button
    And User clicks searching product
    Then User see the product info page
    When User clicks 'add to cart' button
    Then User see "add to cart" confirmation window
    [Teardown]  Close Browser

Changing some order options
    [Tags]  Changing
    [Documentation]  This test case change quantity of ordered items, take an insurance for shipping, select
    ...              packaging as a gift wrap, cheking what happens after typing invalid discount code and finish order
    Given User is in Notino site and is logged in
    And User go to the shopping cart page
    When User change the quantity (2) of ordered product
    And User clicks on insurance select
    And User unselect ecological package and select a gift wrap
    Then User input invalid discount code and see an error message
    And User goes to purchase page and finish its order
    [Teardown]  Close Browser




