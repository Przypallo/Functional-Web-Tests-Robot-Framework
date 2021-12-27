*** Settings ***
Library  SeleniumLibrary
Resource  /Resource/BasePage.robot

*** Variables ***
${login}  xpath= //input[@id='login-name']
${password}  xpath= //input[@id='login-pwd']
${login_button}  xpath= //button[@id='submitLogin']
${username}  xpath= //*[@class='username']
${error_message}  xpath = //*[@class='message error-message']
${register}  xpath= //a[@class='register-link']
