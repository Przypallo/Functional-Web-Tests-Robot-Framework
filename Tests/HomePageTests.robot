*** Settings ***
Documentation  Home page simple click tests
Resource  ../Resources/Keywords.robot

*** Test Cases ***
User clicks 'Makijaż', 'Oczy' and assert content
    [Tags]  Header_First
    [Documentation]  This test cases check some header clicks redirection at Home page without sign in
    Given User is in Notino site and is not logged in
    When User clicks on 'Makijaż'
    And User clicks on 'Oczy'
    Then User see 'Oczy' content
    [Teardown]  Close Browser

User clicks 'CIało', 'Opalanie' and assert content
    [Tags]  Header_Second
    Given User is in Notino site and is not logged in
    When User clicks on 'Ciało'
    And User clicks on 'Opalanie'
    Then User see 'Opalanie' content
    [Teardown]  Close Browser

User clicks 'Mężczyźni', 'Pielęgnacja brody', 'Olejki' and assert content
    [Tags]  Header_Third
    Given User is in Notino site and is not logged in
    When User clicks on 'Mężczyźni'
    And User clicks on 'Pielęgnacja brody'
    And User clicks on 'Olejki'
    Then User see 'Olejki' content
    [Teardown]  Close Browser

User clicks 'Dermokosmetyki', 'Matka i dziecko', 'Pielęgnacja włosów dziecka' and assert content
    [Tags]  Header_Fourth
    Given User is in Notino site and is not logged in
    When User clicks on 'Dermokosmetyki'
    And User clicks on 'Matka i dziecko'
    And User clicks on 'Pielęgnacja włosów dziecka'
    Then User see 'Pielęgnacja włosów dziecka' content
    [Teardown]  Close Browser

Newsletter
    [Tags]  Newsletter
    [Documentation]  This test case checks redirection after typing email adress
     ...             to Newsletter input and click submit 'Mężczyzna' button and see confirmation content
    Given User is in Notino site and is not logged in
    When User type email adress to newsletter input and clicks on men submit button
    Then User see Newsletter confirmation content
    [Teardown]  Close Browser

User clicks 'Dane kontaktowe', 'Sposób dostawy', 'Osobiście' and assert content
    [Tags]  Footer_first
    [Documentation]  This test cases check some footer clicks redirection at Home page without sign in
    Given User is in Notino site and is not logged in
    When User clicks on 'Dane kontaktowe'
    And User see 'Kontakt' content
    And User clicks on 'Sposób dostawy'
    And User clicks on 'Osobiście' as a delivery method
    Then User see 'Osobiście' content
    [Teardown]  Close Browser

User clicks location 'Plac Grunwaldzki' and assert content
    [Tags]  Footer_second
    Given User is in Notino site and is not logged in
    When User clicks on location 'Plac Grunwaldzki'
    Then User see location 'Plac Grunwaldzki' content
    [Teardown]  Close Browser

User clicks location 'Perfumeria Gdańsk' and assert content
    [Tags]  Footer_third
    Given User is in Notino site and is not logged in
    When User clicks on location 'Perfumeria Gdańsk'
    Then User see location 'Perfumeria Gdańsk' content
    [Teardown]  Close Browser

User clicks 'Dermokosmetyki', 'Matka i dziecko', ''Pielęgnacja włosów dziecka and see content
    [Tags]  Footer_fourth
    Given User is in Notino site and is not logged in
    When User clicks on 'Dlaczego Notino'
    Then User see 'Dlaczego Notino' content
    [Teardown]  Close Browser

User change language to Belgique and assert content
    [Tags]  Footer_fifth
    Given User is in Notino site and is not logged in
    When User clicks on Belgique language
    Then User see Belgique content Page
    [Teardown]  Close Browser

User change language to French and assert content
    [Tags]  Footer_sixth
    Given User is in Notino site and is not logged in
    When User clicks on French language
    Then User see French content Page
    [Teardown]  Close Browser

User clicks Instagram and assert content
    [Tags]  Footer_seventh
    Given User is in Notino site and is not logged in
    When User clicks on Instagram
    Then User clicks on Accept cookies on Instagram Page
    [Teardown]  Close Browser