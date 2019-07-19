*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    
AUTOPLIUS SEARCH TEST
        
        Create Webdriver     Chrome     executable_path=/usr/local/bin/chromedriver
        Sleep    1
        # Opening the link
        Go to    https://autoplius.lt/
        Sleep    1
        # Ieskome tik naudotu automobiliu- nuimame varnele nuo "nauji auto"
        Press Keys    xpath=/html/body/div[1]/div[3]/div/div[1]/div[1]/div[2]/div[1]/form/div[1]/div[2]/label[2]    Nauji
        Sleep    1
        # I paieskos teksto laukeli ivedame ranka ieskomo automobilio marke ir modeli
        Input Text    name=qt    alfa romeo spider 
        Sleep    1         
        # Redaguojame paieska i isplestine  
        Click Element    link=Detali paieška   
        Sleep    1
        # Pasirenkame ieskomo automobilio marke
        Press Keys    name=make_id_list    Alfa Romeo
        Sleep    1
        # Pasirenkame ieskomos Alfa Romeo modeli
        Press Keys    xpath=//*[@id="make_id_sublist_portal"]    Mito
        Sleep    1
        # Ikeliame pasirinkima i filtra  
        Press Keys    id=addbtn_make_id    Įkelti
        Sleep    1
        # Paslenkame ekrano vaizda zemyn
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Sleep    1
        # Pasirenkame metus "nuo"
        Select From List By Value    xpath=//*[@id="make_date_from"]    2006
        Sleep    1
        # Pasirenkame kaina "nuo"
        Select From List By Value    xpath=//*[@id="sell_price_from"]    2000
        Sleep    1
        # Pasirenkame "be defektu"
        Select From List By Value    xpath=//*[@id="has_damaged_id"]    10924
        Sleep    1
        # Pasirenkame "ieskoti automobilio su galiojancia TA"
        Press Keys    id=technical_passport    1
        Sleep    1
        # Ikeliame papildomai i paieska Alfa Romeo Spider
        Press Keys    xpath=//*[@id="make_id_sublist_portal"]    Spider
        Sleep    1
        # Patvirtiname ikelima  
        Press Keys    id=addbtn_make_id    Įkelti
        Sleep    1
        # Triname tesksta is paieskos langelio
        Clear Element Text    xpath=//input[@id='qt']  
        Sleep    1
        # Atnaujiname paieska
        Press Keys    xpath=/html/body/div[1]/div[2]/div[1]/div[2]/div[2]/div/div[1]/form/div[2]/a/strong/span    Ieškoti
        Sleep    1
        # Skelbimo perziura
        Press Keys    xpath=/html/body/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]/div[4]/a[1]/div[1]/div/img    Alfa Romeo Mito, 1.4 l., hečbekas
        Sleep    2
        Close All Browsers 
    

*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    
CITADELE CREDIT CALCULATOR AUTOMATION TEST
    
        Create Webdriver     Chrome     executable_path=/usr/local/bin/chromedriver
        Sleep    1
        # Opening the link
        Go to    https://www.cblbank.lt/apps/service/private/consumer-credit?_ga=2.20458620.554853723.1563525608-1418223711.1551464072
        Sleep    1
        # Entering application form details "name"
        Input Text    name=Client[name]    Jonas
        Sleep    1
        # Entering application form details "surname"
        Input Text    name=Client[surname]    Jonauskas
        Sleep    1
        # Accepting grammar rules
        Click Element    xpath=/html/body/div[3]/div/div/div[2]
        Sleep    1
        # Accepting cookies
        Click Element    xpath=/html/body/div[2]/div/div/form/div[6]/div/div/div[2]/button
        Sleep    1
        # G. Data/Asmens k.
        Input Text    name=Client[code]    1982-06-09
        # Telefono Nr.
        Input Text    name=Client[phoneNumber]    +37064063099 
        Sleep    1
        # Miestas
        Input Text    name=Client[city]    Vilnius
        Sleep    1
        # El. Pastas
        Input Text    name=Client[email]    gumtree.postbox@gmail.com
        Sleep    1
        # Seimynine padetis
        Press Keys    name=Client[maritalStatus]    nevedęs 
        Sleep    1
        # Suma
        Input Text    name=Step0[creditAmount]    10000
        Sleep    1
        # Terminas
        Input Text    name=Step0[creditTerm]    60
        Sleep    1
        # Paskirtis
        Press Keys    name=Step0[creditPurpose]    Automobilio pirkimui
        Sleep    1
        # Atlyginimas
        Input Text    name=IncomeAndLiabilities[salary]    1200
        Sleep    1
        # Pareigos
        Press Keys    name=IncomeAndLiabilities[position]    Specialistas
        Sleep    1
        # Kitos pajamos
        Input Text    name=IncomeAndLiabilities[otherIncomes]    0
        Sleep    1
        # Isipareigojimai
        Input Text    name=IncomeAndLiabilities[obligationFee]    250
        Sleep    1
        # Marketingui
        Press Keys    name=Step0[knowAboutCreditFrom]    Internete
        Sleep    1
        # Toliau
        Press Keys    xpath=//*[@id="submit_btn_dir"]    next
        Sleep    2
        Close All Browsers 
        


