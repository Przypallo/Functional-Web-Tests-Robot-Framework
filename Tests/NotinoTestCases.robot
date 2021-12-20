*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
Resource  ../Resources/Locators.robot

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
