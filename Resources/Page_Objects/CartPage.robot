*** Settings ***
Library  SeleniumLibrary
Resource  BasePage.robot

*** Variables ***
${quantity_select}  xpath= //select[@class='sc-fzoaKM jVIpRn']
${deletion_button}  xpath= //div[@class='sc-fzoiQi dvMtpd styled__TextButtonCol-hnsqpa lduGGo remove']
${wrap_as_gift_select}  xpath= //*[@id="app"]/div/div[1]/div/div[2]/div[2]/div[1]/div[1]/label/span
${wrap_ecologically_select}  xpath= //*[@id="app"]/div/div[1]/div/div[2]/div[4]/div[1]/div[1]/label/span
${shipping_insurance_select}  xpath= //*[@id="app"]/div/div[1]/div/div[2]/div[6]/div[1]/div[1]/label/span
${coupon_input}  xpath= //input[@class='sc-fzoxnE fXbzUK enterCouponCode']
${coupon_error_message}  xpath= //span[@class='sc-fzplgP bHmBtJ']
${coupon_confirmation_button}  xpath= //span[contains(text(),'OK')]
${back_to_homepage_button}  xpath= //button[@class='sc-fzqBZW kCYchN sc-fzqNJr cHDjRw sc-fznJRM fzFSIM styled__StyledActionButton-bmFdvi iTvBVs backToStore']
${proceed_to_checkout_button}  xpath= //*[@class='sc-fzqBZW dOiTBy sc-fzqNJr cHDjRw sc-fznJRM fzFSIM styled__StyledActionButton-bmFdvi iTvBVs toCashRegister']
${upselling_confirmation}  xpath= //*[contains(text(),'więcej rabatów ')]
${changing_package_confirmation}  xpath= //img[@class='styled__StyledImage-hwLrcB ufxyF styled__StyledImage-bCZArC isgLn']

#### Personalisation Pop-Up ####
${personalisation_popup}  xpath= //div[@class='sc-fzplWN fEgtRc']
${package_color_red}  xpath= //div[@class='styled__StyledColorTile-fHthrz iYgnIQ']
${package_color_beige}  xpath= //div[@class='styled__StyledColorTile-fHthrz ltXVk']
${inside_box_select}  xpath= //*[@id="newBox0"]/div[2]/div/div/label/span
${add_next_box_button}  xpath= //button[@class='sc-fzqBZW kCYchN sc-fzqNJr cHDjRw sc-fznJRM fzFSIM styled__StyledActionButton-bmFdvi iTvBVs addBox']
${save_box_button}  xpath= //button[@class='sc-fzqBZW dOiTBy sc-fzqNJr cHDjRw sc-fznJRM fzFSIM styled__StyledActionButton-bmFdvi iTvBVs saveBox']