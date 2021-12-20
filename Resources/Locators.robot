*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.notino.pl/
${BROWSER}  Chrome
${my_account_button}  xpath= //a[@class='_1EI6NskO4Sq-ZriU1BEjSJ']
${wish_list}  xpath= //a[@href='/wishlist/']
${cart_button}  xpath= //a[@href='/cart/']
${login}  xpath= //input[@id='login-name']
${password}  xpath= //input[@id='login-pwd']
${login_button}  xpath= //button[@id='submitLogin']
${error_message}  xpath = //*[@class='message error-message']

