*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.notino.pl/
${BROWSER}  Chrome
${rodo}  xpath= //a[@class='ack exp-btn close']
#########################
#### Header Locators ####
#########################
${logo}  xpath= //a[@href='/']
${search_input}  xpath= //*[@class='_1ScNqBTR0aCvGryVrtI7pv zDdjrmuo5jtaP-eB-iFHS']
${search_button}  xpath= //a[@class='PX0uA5qOiKtclT3HNlKFU ']
${my_account_button}  xpath= //a[@class='_1EI6NskO4Sq-ZriU1BEjSJ']
${wish_list}  xpath= //a[@href='/wishlist/']
${cart_button}  xpath= //a[@class='_29iivLE6XsN2c6IqFA0cId']
${discounts_button}  xpath= //a[@href='/znizki/']
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
${beard_care_button}  xpath= //a[@href='/kosmetyki-do-brody/']
${beard_oils_button}  xpath= //a[@href='/olejek-do-brody/']
${beard_oils_content}  xpath= //h1[contains(text(),'Olejek do brody')]
${dermocosmetics_button}  xpath= //div[contains(text(),'Dermokosmetyki')]
${mom_child_button}  xpath= //a[@href='/dermokosmetyki/?f=1-1-37171-68077']
${child_skin_care_button}  xpath= //span[contains(text(),'Pielęgnacja skóry dziecka')]
${child_skin_care_content}  xpath= //h1[contains(text(),'Pielęgnacja skóry dziecka')]
${others_button}  xpath= //div[contains(text(),'Inne')]
${brands_button}  xpath= //div[contains(text(),'Marki')]

#########################
#### Footer Locators ####
#########################
${footer_phone}  xpath= //*[@class='footer-phoneOpensWrapper']
${footer_email}  xpath= //a[@class='footer-email']
${footer_contact}  xpath= //a[@class='footer-contact']
${footer_contact_content}  xpath= //h1[contains(text(),'Kontakt')]
${deliver_method_button}  xpath= //a[@href='https://www.notino.pl/dostawa-i-platnosci/']
${personally_drop_down}  xpath= //body/div[@id='outer-wrap']/div[@id='layout-main-wrap']/div[1]/div[1]/div[1]/div[3]/h3[1]/a[1]
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
${about_us}  xpath= //a[@href=https://www.notino.pl/o-nas/']
${black_friday}  xpath= //a[@href='https://www.notino.pl/black-friday/']
${why_notino}  xpath= //a[@href='https://www.notino.pl/dlaczego-notino/']
${why_notino_content}  xpath= //body/div[@id='outer-wrap']/div[@id='layout-main-wrap']/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/h1[1]
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
${ceneo_feedback}  xpath= //a[@class='footer-otherLinksPartnerLink']//img[1]
${ceneo_logo}  xpath= //header/div[2]/div[1]/a[1]/img[1]
${opineo_feedback}  xpath= //a[@href='https://www.opineo.pl/opinie/notino-pl']
${ceneo2_feedback}  xpath= //a[@href='https://www.ceneo.pl/lp/ranking-zaufany-sklep-2018']

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
${trasfer}  xpath= //a[@href='https://www.notino.pl/dostawa-i-platnosci/#przelewy-24-p-141']
${debit_card}  xpath= //body/div[@id='a48f089b-57d4-44b7-b1a2-060d63e9d354']/div[1]/div[1]/div[1]/div[1]/div[7]/div[1]/div[1]/a[2]

#### Social Media ####
${facebook}  xpath= //a[@href='https://www.facebook.com/notinopl/']
${instagram}  xpath= //a[@href='https://www.instagram.com/notino_pl/']
@{instagram_confirmation_button}  xpath= //button[contains(text(),'Akceptuję wszystko')]
${youtube}  xpath= //a[@href='https://www.youtube.com/channel/UCbovyqfF9-Uz6OTNhsLFYXA']
