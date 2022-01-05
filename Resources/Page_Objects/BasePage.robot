*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.notino.pl/
${BROWSER}  firefox
${rodo}  xpath= //a[@class='ack exp-btn close']

#########################
#### Header Locators ####
#########################
${logo}  xpath= //div[@class='_2BaVUmP1QHmgnGsuOmDjwE']/a
${search_input}  xpath= //input[@class='_1ScNqBTR0aCvGryVrtI7pv zDdjrmuo5jtaP-eB-iFHS']
${search_button}  xpath= //a[@class='PX0uA5qOiKtclT3HNlKFU ']
${my_account_button}  xpath= //a[@class='_1EI6NskO4Sq-ZriU1BEjSJ']
${wish_list}  xpath= //a[@class='_1UcKP9vvgCe0gwBofxlQwe _2qkWDvI-5Jv_ExDnpPhP4w _3gwQzPmtpsz7mJafB6jxQ']
${cart_button}  xpath= //a[@class='_29iivLE6XsN2c6IqFA0cId']
${discounts_button}  xpath= //a[@class='_1xJGPlpnbpQgzNuTsyAOuc ZuZvlh_cuzooQSlmLOy8b']
${fragrance_button}  xpath= //div[contains(text(),'Perfumy')]
${hair_button}  xpath= //div[contains(text(),'Włosy')]
${face_skin_button}  xpath= //div[contains(text(),'Makijaż')]
${eyes_button}  xpath= //span[contains(text(),'Oczy')]
${eyes_content}  xpath= //h1[contains(text(),'Kosmetyki do makijażu oczu')]
${body_button}  xpath= //div[contains(text(),'Ciało')]
${tanning_button}  xpath= //span[contains(text(),'Opalanie')]
${tanning_content}  xpath= //h1[contains(text(),'Opalanie')]
${teeth_button}  xpath= //div[contains(text(),'Zęby')]
${home_fragrances_button}  xpath= //div[contains(text(),'Zapachy do domu')]
${men_button}  xpath= //div[contains(text(),'Mężczyźni')]
${beard_care_button}  xpath= //a[@title='Pielęgnacja brody']
${beard_oils_button}  xpath= //a[@title='Olejki']
${beard_oils_content}  xpath= //h1[contains(text(),'Olejek do brody')]
${dermocosmetics_button}  xpath= //div[contains(text(),'Dermokosmetyki')]
${mom_child_button}  xpath= //a[@title='Matka i dziecko']
${child_skin_care_button}  xpath= //a[@title='Pielęgnacja skóry dziecka']
${child_skin_care_content}  xpath= //h1[contains(text(),'Pielęgnacja skóry dziecka')]
${others_button}  xpath= //div[contains(text(),'Inne')]
${brands_button}  xpath= //div[contains(text(),'Marki')]

#########################
#### Footer Locators ####
#########################
${footer_email}  xpath= //a[@class='footer-email']
${footer_contact}  xpath= //a[@class='footer-contact']
${footer_contact_content}  xpath= //h1[contains(text(),'Kontakt')]
${deliver_method_button}  xpath= //a[@class='f2201']
${personally_drop_down}  xpath= //a[@class='ca-link']
${personally_drop_down_content}  xpath= //li[contains(text(),'Twoje zamówienie zostanie dostarczone do wybranego')]
${footer_newsletter}  xpath= //input[@id='newsletterEmail']
${footer_newsletter_content}  xpath= //h1[contains(text(),'Dziękujemy za zainteresowanie')]
${footer_woman}  xpath= //button[@id='womanButton']
${footer_man}  xpath= //button[@id='manButton']

#### Our Shops ####
${footer_warsaw_example}  xpath= //a[contains(text(),'Arkadia')]
${footer_cracow_example}  xpath= //a[contains(text(),'Kamienna')]
${footer_poznan_example}  xpath= //a[contains(text(),'Posnania')]
${footer_wroclaw_example}  xpath= //a[contains(text(),'Plac Grunwaldzki')]
${footer_wroclaw_example_content}  xpath= //h1[contains(text(),'Perfumeria Wrocław')]
${footer_katowice_example}  xpath= //a[contains(text(),'Galeria Katowicka'')]
${footer_gdansk_example}  xpath= //a[contains(text(),'Galeria Madison')]
${footer_gdansk_example_content}  xpath= //h1[contains(text(),'Perfumeria Gdańsk')]
${footer_lodz_example}  xpath= //a[contains(text(),'Manufaktura')]

#### Why Notino ####
${about_us}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'O nas')]
${black_friday}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Black Friday')]
${why_notino}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Dlaczego Notino')]
${why_notino_content}  xpath= //div[@class='ca-box']/h1[contains(text(),'')]
${phone_orders}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Zamówienia telefoniczne')]
${original_products}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Wyłącznie oryginalne produkty')]
${discount_coupon}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'kod rabatowy')]
${rodo}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Ochrona')]
${self_pickup}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Odbiór')]
${client_feedback}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Opinie')]

#### Important links ####
${main_page}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Strona')]
${withdrawals}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'umowy')]
${blog}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Blog')]
${competitions}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Konkursy')]
${affiliate_program}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Program')]
${faq}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'pytania')]
${how_buy}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Jak')]
${complaints}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Reklamacje')]
${helpdesk}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Pomoc')]
${delivery}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Sposób')]
${payment_methods}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'płacić?')]
${job}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Praca')]
${delivery_speed}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'otrzymam')]
${terms_and_conditions}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Regulamin')]
${ig_competition}  xpath= //li[@class='footer-linkListItem']/a[contains(text(),'Instagram')]

#### Rewards ####
${ceneo_feedback}  xpath= //div[@class='footer-otherLinksPartnersWrapper']/a[@title='Ceneo'][1]
${opineo_feedback}  xpath= //div[@class='footer-otherLinksPartnersWrapper']/a[@title='Opineo'][1]
${ceneo2_feedback}  xpath= //div[@class='footer-otherLinksPartnersWrapper']/a[@title='Ceneo'][2]
${opineo2_feedback}  xpath= //div[@class='footer-otherLinksPartnersWrapper']/a[@title='Opineo'][2]

#### Languages ####
${belgique}  xpath= //span[contains(text(),'BELGIQUE')]
${belgique_content}  xpath= //a[contains(text(),'Frais livraison & paiement')]
${spanish}  xpath= //span[contains(text(),'ESPAÑA')]
${portuguese}  xpath= //span[contains(text(),'PORTUGAL')]
${romanian}  xpath= //span[contains(text(),'ROMÂNIA')]
${french}  xpath= //span[contains(text(),'FRANCE')]
${french_content}  xpath= //a[contains(text(),'Frais livraison & paiement')]
${swiss}  xpath= //span[contains(text(),'SCHWEIZ')]
${danish}  xpath= //span[contains(text(),'DANMARK')]

#### Payment Methods ####
${trasfer}  xpath= //a[@class='footer-paymentsSocialPaymentLink'][1]
${debit_card_visa}  xpath= //a[@class='footer-paymentsSocialPaymentLink'][2]
${debit_card_mastercard}  xpath= //a[@class='footer-paymentsSocialPaymentLink'][3]

#### Social Media ####
${facebook}  xpath= //a[@class='footer-paymentsSocialSocialIconLink'][1]
${instagram}  xpath= //a[@class='footer-paymentsSocialSocialIconLink'][2]
@{instagram_confirmation_button}  xpath= //button[contains(text(),'Akceptuję wszystko')]
${youtube}  xpath= //a[@class='footer-paymentsSocialSocialIconLink'][3]
