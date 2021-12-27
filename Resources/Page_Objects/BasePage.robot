*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#########################
#### Header Locators ####
#########################
${logo}  xpath= //a[@href='/']
${search_input}  xpath= //*[@class='_1ScNqBTR0aCvGryVrtI7pv zDdjrmuo5jtaP-eB-iFHS']
${search_button}  xpath= //a[@href='/search.asp']
${my_account_button}  xpath= //a[@class='_1EI6NskO4Sq-ZriU1BEjSJ']
${wish_list}  xpath= //a[@href='/wishlist/']
${cart_button}  xpath= //a[@href='/cart/']
${discounts_button}  xpath= //a[@href='/znizki/']
${fragrance_button}  xpath= //a[@href='/perfumy/']
${hair_button}  xpath= //a[@href='/kosmetyka/kosmetyki-podkreslajace/']
${face_skin_button}  xpath= //a[@href='/kosmetyka/kosmetyki-do-twarzy/']
${body_button}  xpath= //a[@href='/kosmetyka/kosmetyki-do-ciala/']
${teeth_button}  xpath= //a[@href='/pielegnacja-zebow/']
${home_fragrances_button}  xpath= //a[@href='/zapachy-do-domu/']
${men_button}  xpath= //a[@href='/kosmetyki-dla-mezczyzn/']
${dermocosmetics_button}  xpath= //a[@href='/dermokosmetyki/']
${others_button}  xpath= //a[@class='_2YqbXdnYf1O2Gi0oVbauMi _2-vaRnpipen8HO062lkIWE cg0lzh4P0fH6hGiY1Vw2a  ']
${brands_button}  xpath= //a[@href='/marki-kosmetykow/']
#########################
#### Footer Locators ####
#########################
${footer_phone}  xpath= //*[@class='footer-phoneOpensWrapper']
${footer_email}  xpath= //a[@class='footer-email']
${footer_contact}  xpath= //a[@class='footer-contact']
${footer_newsletter}  xpath= //input[@id='newsletterEmail']
${footer_woman}  xpath= //button[@id='womanButton']
${footer_man}  xpath= //button[@id='manButton']
#### Our Shops ####
${footer_warsaw_example}  xpath= //a[@class='footer-shopsStoreLink footer-sectionLink footer-verticalDivider']
${footer_cracow_example}  xpath= //a[@class='footer-shopsStoreLink footer-sectionLink footer-verticalDivider']
${footer_poznan_example}  xpath= //a[@class='footer-shopsStoreLink footer-sectionLink footer-verticalDivider']
${footer_wroclaw_example}  xpath= //a[@class='footer-shopsStoreLink footer-sectionLink footer-verticalDivider']
${footer_katowice_example}  xpath= //a[@class='footer-shopsStoreLink footer-sectionLink footer-verticalDivider']
${footer_gdansk_example}  xpath= //a[@class='footer-shopsStoreLink footer-sectionLink footer-verticalDivider']
${footer_lodz_example}  xpath= //a[@class='footer-shopsStoreLink footer-sectionLink footer-verticalDivider']
#### Why Notino ####
${about_us}  xpath= //a[@href=https://www.notino.pl/o-nas/']
${black_friday}  xpath= //a[@href='https://www.notino.pl/black-friday/']
${why_notino}  xpath= //a[@href='https://www.notino.pl/dlaczego-notino/']
${phone_orders}  xpath= //a[@href='https://www.notino.pl/zamowienia-telefoniczne/']
${original_products}  xpath= //a[@href='https://www.notino.pl/wycznie-oryginalne-produkty/']
${discount_coupon}  xpath= //a[@href='https://www.notino.pl/notino-kupon-rabatowy-kupon/']
${rodo}  xpath= //a[@href='https://www.notino.pl/ochrona-danych-osobowych/']
${self_pickup}  xpath= //a[@href='https://www.notino.pl/punkty-odbioru-osobistego/']
${client_feedback}  xpath= //a[@href='https://www.notino.pl/recenzje-notino/']
#### Important links ####
${main_page}  xpath= //a[@href='https://www.notino.pl/']
${withdrawals}  xpath= //a[@href='https://www.notino.pl/gwarancja-zwrotu-pienidzy/']
${blog}  xpath= //a[@href='https://www.notino.pl/beautyblog/']
${competitions}  xpath= //a[@href='https://www.notino.pl/konkursy/']
${affiliate_program}  xpath= //a[@href='https://www.notino.pl/affiliate-program/']
${faq}  xpath= //a[@href='https://www.notino.pl/najczstsze-pytania/']
${how_buy}  xpath= //a[@href='https://www.notino.pl/najczstsze-pytania/']
${complaints}  xpath= //a[@href='https://www.notino.pl/reklamacje/']
${helpdesk}  xpath= //a[@href='https://www.notino.pl/pomoc/']
${delivery}  xpath= //a[@href='https://www.notino.pl/dostawa-i-platnosci/']
${payment_methods}  xpath= //a[@href='https://www.notino.pl/jak-mog-paci/']
${job}  xpath= //a[@href='https://www.notino.cz/pracuj-pro-nas/en/?utm_source=notino.pl&utm_medium=referral&utm_campaign=notino-eshop-footer']
${delivery_speed}  xpath= //a[@href='https://www.notino.pl/kiedy-otrzymam-zamowienie/']
${terms_and_conditions}  xpath= //a[@href='https://www.notino.pl/regulamin-zakupow/']
${ig_competition}  xpath= //a[@href='https://www.notino.pl/konkurs-instagram/']
#### Rewards ####
${ceneo_feedback}  xpath= //a[@href='https://www.ceneo.pl/sklepy/notino.pl-s751']
${opineo_feedback}  xpath= //a[@href='https://www.opineo.pl/opinie/notino-pl']
${ceneo2_feedback}  xpath= //a[@href='https://www.ceneo.pl/lp/ranking-zaufany-sklep-2018']
#### Languages ####
${spanish}  xpath= //a[@href='https://www.notino.es/']
${portuguese}  xpath= //a[@href='https://www.notino.pt/']
${romanian}  xpath= //a[@href='https://www.notino.ro/']
${french}  xpath= //a[@href='https://www.notino.fr/']
${swiss}  xpath= //a[@href='https://www.notino.ch/']
${danish}  xpath= //a[@href='https://www.notino.dk/']
#### Payment Methods ####
${trasfer}  xpath= //a[@href='https://www.notino.pl/dostawa-i-platnosci/#przelewy-24-p-141']
${debit_card}  xpath= //a[@href='https://www.notino.pl/dostawa-i-platnosci/#karta-platnicza-online-p-246']
#### Social Media ####
${facebook}  xpath= //a[@href='https://www.facebook.com/notinopl/']
${instagram}  xpath= //a[@href='https://www.instagram.com/notino_pl/']
${youtube}  xpath= //a[@href='https://www.youtube.com/channel/UCbovyqfF9-Uz6OTNhsLFYXA']
