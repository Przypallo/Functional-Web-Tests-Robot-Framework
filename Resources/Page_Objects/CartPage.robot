*** Settings ***
Library  SeleniumLibrary
Resource  BasePage.robot

*** Variables ***
${quantity_select}  xpath= //div[@class='styled__StyledQuantityWrapper-brDYta eqrliO styled__StyledDropDownQuantitySelector-icijNf inOwaa']
${quantity_select_1}  xpath= //div[@class='sc-fzqAui bmIpre']
${quantity_select_2}  xpath= //div[@class='sc-fznLPX sc-fzqMdD fhySoC']
${quantity_select_3}  xpath= //div[@class='sc-fzqAui bmIpre']
${deletion_button}  xpath= //a[@class='styled__TextButtonStyled-jXqtRZ bSmPkq']
${wrap_as_git_select}  xpath= //span[@class='sc-fznMnq jpFOnq']
${wrap_ecologically_select}  xpath= //span[@class='sc-fznMnq jioZBl']
${shipping_insurance_select}  xpath= //span[@class='sc-fznMnq jpFOnq']
${coupon_input}  xpath= //input[@class='sc-fzoxnE fXbzUK enterCouponCode']
${coupon_error_message}  xpath= //span[@class='sc-fzplgP bHmBtJ']
${coupon_confirmation_button}  xpath= //span[@class='sc-fzoXzr iIulAm']
${back_to_homepage_button}  xpath= //button[@class='sc-fzqBZW kCYchN sc-fzqNJr cHDjRw sc-fznJRM fzFSIM styled__StyledActionButton-bmFdvi iTvBVs backToStore']
${proceed_to_checkout_button}  xpath= //button[@class='sc-fzqBZW dOiTBy sc-fzqNJr cHDjRw sc-fznJRM fzFSIM styled__StyledActionButton-bmFdvi iTvBVs toCashRegister']
${upselling_confirmation}  xpath= //*[contains(text(),'Im więcej kupisz, tym więcej rabatów otrzymasz:')]

#### Personalisation Pop-Up ####
${personalisation_popup}  xpath= //div[@class='sc-fzplWN fEgtRc']
${package_color_red}  xpath= //div[@class='styled__StyledColorTile-fHthrz gPSpWr']
${package_color_beige}  xpath= //div[@class='styled__StyledColorTile-fHthrz ltXVk']
${inside_box_select}  xpath= //input[@class='sc-fzomME cGXDmE']
${add_next_box_button}  xpath= //button[@class='sc-fzqBZW kCYchN sc-fzqNJr cHDjRw sc-fznJRM fzFSIM styled__StyledActionButton-bmFdvi iTvBVs addBox']
${save_box_button}  xpath= //button[@class='sc-fzqBZW dOiTBy sc-fzqNJr cHDjRw sc-fznJRM fzFSIM styled__StyledActionButton-bmFdvi iTvBVs saveBox']