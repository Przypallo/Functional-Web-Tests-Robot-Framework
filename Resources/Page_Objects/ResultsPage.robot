*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${searching_content}  xpath= //div[@id='category_products']
${searching_product}  xpath= //a[@href='/calvin-klein/euphoria-woda-perfumowana-dla-kobiet/p-60089/']
${add_to_cart_button}  xpath= //button[@class='sc-cxNHIi iZpVlb sc-bBjRSN citTrM sc-gSYDnn eNLiSM styled__StyledBuyButton-sc-1imk0r0-0 bOftCE']
${add_to_cart_confiration}  xpath= //div[@class='styled__StyledHeader-sc-1io4v49-9 kDYacD']
${collect_immediately_button}  xpath= //button[@class='sc-cxNHIi loPzPD styled__PickUpButton-sc-5tvp77-1 hJoXvb']
${continue_shopping_button}  xpath= //button[@id='upsellingContinueWithShopping']
${add_to_wishlist_button}  xpath= //a[@class='styled__StyledAddToWishlist-b729bm-1 hqCzTG']
${about_brand_button}  xpath= //div[@id='tabBrand']
${reviews_button}  xpath= //div[@id='tabReviews']

