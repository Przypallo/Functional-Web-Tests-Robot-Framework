*** Settings ***
Library  SeleniumLibrary
Resource  BasePage.robot

*** Variables ***
${quantity_select}  xpath= //select@class='sc-jHcXXw Nmhgf']
${deletion_button}  xpath= //a[contains(text(),'Usuń')]
${wrap_as_gift_select}  xpath= //body/div[@id='outer-wrap']/div[@id='layout-main-wrap']/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/label[1]/span[1]
${wrap_ecologically_select}  xpath= //body/div[@id='outer-wrap']/div[@id='layout-main-wrap']/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[4]/div[1]/div[1]/label[1]/span[1]
${shipping_insurance_select}  xpath= //body/div[@id='outer-wrap']/div[@id='layout-main-wrap']/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[6]/div[1]/div[1]/label[1]/span[1]
${coupon_input}  xpath= //input[@class='sc-fzoxnE fXbzUK enterCouponCode']
${coupon_error_message}  xpath= //span[@class='sc-fzplgP bHmBtJ']
${coupon_confirmation_button}  xpath= //span[contains(text(),'OK')]
${back_to_homepage_button}  xpath= //button[@class='sc-fzqBZW kCYchN sc-fzqNJr cHDjRw sc-fznJRM fzFSIM styled__StyledActionButton-bmFdvi iTvBVs backToStore']
${proceed_to_checkout_button}  xpath= //*[@class='sc-fzqBZW dOiTBy sc-fzqNJr cHDjRw sc-fznJRM fzFSIM styled__StyledActionButton-bmFdvi iTvBVs toCashRegister']
${upselling_confirmation}  xpath= //*[contains(text(),'Im więcej kupisz, tym więcej rabatów otrzymasz:')]
${changing_package_confirmation}  xpath= //img[@class='styled__StyledImage-hwLrcB ufxyF styled__StyledImage-bCZArC isgLn']

#### Personalisation Pop-Up ####
${personalisation_popup}  xpath= //div[@class='sc-fzplWN fEgtRc']
${package_color_red}  xpath= //body/div[@id='outer-wrap']/div[@id='layout-main-wrap']/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]
${package_color_beige}  xpath= //body/div[@id='outer-wrap']/div[@id='layout-main-wrap']/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]
${inside_box_select}  xpath= //body/div[@id='outer-wrap']/div[@id='layout-main-wrap']/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/label[1]/span[1]
${add_next_box_button}  xpath= //button[@class='sc-fzqBZW kCYchN sc-fzqNJr cHDjRw sc-fznJRM fzFSIM styled__StyledActionButton-bmFdvi iTvBVs addBox']
${save_box_button}  xpath= //button[@class='sc-fzqBZW dOiTBy sc-fzqNJr cHDjRw sc-fznJRM fzFSIM styled__StyledActionButton-bmFdvi iTvBVs saveBox']