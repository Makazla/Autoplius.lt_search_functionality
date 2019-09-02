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
        Input Text    name=Client[email]    kazlausko.m@gmail.com
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
        
*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    
INSTAGRAM LIKE AND COMMENT BOT
        Create Webdriver     Firefox     executable_path=/usr/local/bin/geckodriver
        Sleep    1
        # Opening the link
        Go to    https://www.instagram.com/
        Sleep    1
        # Log in
        Press Keys    xpath://*[@class="_0mzm-.sqdOP.yWX7d" or @type="button"]    Log in with Facebook
        # Press Keys    xpath=/html/body/span/section/main/article/div[2]/div[1]/div/form/div[1]/button    Log in with facebook
        Sleep    1
        # Entering log in details
        Input text    xpath=//*[@id="m_login_email"]    +37064063099
        Input text    xpath=//*[@name="pass"]   stirniuxbebriuX7
        Press Keys    name=login    Log In
        Sleep    2
        Click Element    css=div[class="piCib"][name="email"][class^="form-control"]    kazlausko.m@gmail.com
        # Click Element    xpath=//button[span="Not Now"]
        # Click ELement    css=div[class="aOOlW.HoLwm"][span="Not Now"]
        # Click Element    xpath=//button[@class="HoLwm" and span="Not Now"]
        # Click ELement    xpath=//button[@class="HoLwm" and contains(., "Not Now")]
        # Click ELement    xpath=//button[contains(.,'Not Now')]
        # Press Keys    css=div[class=".aOOlW.HoLwm"][type="button"]    Not Now
        # Press Keys    xpath=//*[@class="aOOlW.HoLwm" or @tabindex="0"]    Not Now
        # Click Element    xpath=//button[starts-with(@class,"aOOlW")]
        # Click Element    css=button.aOOlW.HoLwm[span="Not Now"]
        # Press Keys    css=html.js.logged-in.client-root body div.RnEpo.Yx5HN div.pbNvD.fPMEg div.piCib div.mt3GC button.aOOlW.HoLwm    Not Now
        # Click Element    css=button:contains("Not Now")
        # Sitie nepaejo
        # Press Button    xpath=//*[@name="Not Now" and @tabindex="0"]    
        # Press Keys    xpath=//*[ancestor::div[@tabindex='0']]    Not Now
        # Press Keys    xpath=//*[@tabindex="0"]    Not Now
        # Click Element    xpath=//button[contains(.,"Not Now")]
        # Press Keys    xpath=//*[@tabindex="0"]    Not Now
        # Press Keys    class=a00lW Holwm    Not Now
        # Input text    xpath=//*[@placeholder="paddleboarding"]
        # Click Button    xpath=//button[contains(.,'Not Now')]
        # Click Button    css=button."aOOlW   HoLwm "(name="Not Now")

*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    
SENUKAI PASPIRTUKAS
        Create Webdriver     Firefox     executable_path=/usr/local/bin/geckodriver
        Sleep    1
        # Opening the link
        Go to    https://www.senukai.lt
        Sleep    1
        # Searching for the item
        Input Text    id=q    paspirtukas
        Sleep    1
        # Press Keys    css=div.sn-suggest-hint.sn-suggest-item[data-suggest="paspirtukai"]    Elektronikos prekės//TV, audio, video, telefonai//Dronai, riedžiai, paspirtukai ir išmanioji technika
        # Sleep    1
        # Press Keys    css=span.add-to-cart-catalog-btn.button-size-ms main-button[type="submit"]    Įdėti į krepšelį    
        # Sleep    1
        
*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    
Paysera pr reg
        # prisijungimas be reg.>registracija>prisijungimas po reg.
        Create Webdriver     Firefox     executable_path=/usr/local/bin/geckodriver
        Sleep    1
        # Opening the link
        Go to    https://bank.paysera.com/lt/login?fbclid=IwAR1qUl15HovXkqaDykKqiVdbisoEnhv3SUmf9hnRzXrexW5z1uCzTnczkb8
        Sleep    1
        # Bandome jungtis be registracijos
        Input Text    name=userIdentifier    kazlausko@gmail.com
        Sleep    1
        Press Keys    xpath=//*[@type="submit"]    Prisijungti
        Sleep    3
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        # Sukuriame paskyra
        Press Keys    css=.text-capitalize > a    Susikurkite dabar! 
        Sleep    1
        
        # Ivedame el.p adresa
        Input Text    css=input[type="text"][name="email"][class^="form-control"]    gumtree.postbox@gmail.com
        # Ivedame slaptazodi
        Input Text    css=input[type="password"][name="password"][class^="form-control"]    vugvugvugA7
        # Patvirtiname slaptazodi
        Input Text    css=input[type="password"][name="verification"][class^="form-control"]    vugvugvugA7
        # Ivedame vartotojo varda
        Input Text    css=input[type="text"][name="name"][class^="form-control"]    Marius
        # Ivedame vartotojo pavarde
        Input Text    css=input[type="text"][name="surname"][class^="form-control"]    Kazlauskas
        # Ivedame tel. nr.
        Input Text    css=input[type="text"][name="phone"][class^="form-control"]    +37064063099
        # Spaudziame "sutinku"
        Press Keys    css=input[type="checkbox"]    Sutinku su Paysera
        # Spaudziame "Atidaryti sask.
        Press Keys    css=button[type="submit"][class^="btn"]    Atidaryti sąskaitą
        Press Keys    css=button[class="_2t-5"][tabindex="0"][role=button]
        Sleep    3
        
        Click Element    css=a.text-capitalize   
        # Click Element    xpath=//div[2]/a/span
        # Click Link    css=a[href="/lt/login"[.name="prisijungimas"]    
        # Click Element    link=Į el. pašto paskyrą
        Sleep    1
        # Loginas
        Input Text    name=userIdentifier    kazlausko@gmail.com
        Sleep    1
        Press Keys    css=button[type="submit"][class^="btn"]    Prisijungti
        Sleep    1
        # Ivedame slaptazodi
        # Click Element     css=*[role="tab"][id="login-methods-heading-user_credentials"][class$="panel-heading-narrow"]
        # Close All Browsers 
        
*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    
Paysera po reg
    # prisijungimas po reg.
        Create Webdriver     Firefox     executable_path=/usr/local/bin/geckodriver
        Sleep    1
        # Opening the link
        Go to    https://bank.paysera.com/lt/login?fbclid=IwAR1qUl15HovXkqaDykKqiVdbisoEnhv3SUmf9hnRzXrexW5z1uCzTnczkb8
        Sleep    1
        # Loginas
        Input Text    name=userIdentifier    kazlausko@gmail.com
        Press Keys    css=button[type="submit"][class^="btn"]    Prisijungti
        # Sleep    1
        # Click Element    css=div[id^="login-methods"][class^="panel-heading-narrow"]
        Sleep    1
        Click Element    xpath=//div[2]/a/div/strong
        # Click Element    xpath=//*[@id="login-methods-heading-user_credentials" or @class="h5"]
        # Click Element    css=div[id^="login-methods"][class^="panel-heading-narrow"]
        Sleep    1
        # Input Text    css=input[class$="ng-touched"][name="email"]    kazlausko@gmail.com    
        # Input Text    xpath=//class[starts-with(@class,"form-control.ng-pristine.ng-valid-server-validation.ng-invalid.ng-invalid-required.ng-valid-pattern.ng-touched")]    kazlausko@gmail.com
       
        # Renkames sali "Lietuva"
        
        # Press Keys    name=countryCode    lt
        # Select From List By Value    xpath=//*[@option="lt"]    Lietuva
        # Click Element    xpath=//*[@name="countryCode" and @value="lt"]
        # Click Element    xpath=//*[@name="countryCode" and @value="Lietuva"]
        
        # Suvedame emaila
        
        # Input Text    css=input.form-control.ng-pristine.ng-valid.ng-valid-required.ng-touched    kazlausko@gm.com
        # Input Text    css=input[class="form-control.ng-pristine.ng-valid.ng-valid-required.ng-touched"] [name="email"]    kazlausko@gmail.com
        # Input text    xpath=//*[@type='text' or @name='email']    kazlausko@gmail.com
        # Input Text    xpath=//*[contains(@name,'email')]    kazlausko@gmail.com
        # Input Text    xpath=//*[@class="ng-touched"]//*[name="email"]    kazlausko@gmail.com
        # Input Text    xpath=//input[@name="email"]    kazlausko@gmail.com
        # Input Text    xpath=/html/body/div[2]/main/div/div/div/div/div[2]/div[2]/form/div[4]/div[2]/input    kazlausko@gmail.com
        # Input Text    xpath=/html/body/div[2]/main/div/div/div/div/div[2]/div[2]/form/div[4]/div[2]    kazlausko@gmail.com    
        # Input Text    xpath=//*[contains(name(), "email")]    kazlausko@gmail.com    
        # Input Text    css=.form-group.has-feedback.ng-isolate-scope[name="email"]    kazlausko@gmail.com
        # Input Text    xpath=//html[@id='ng-app']/body/div[2]/main/div/div/div/div/div[2]/div[2]/form/div[4]/div[2]/input    kazlausko@gmail.com
        # Input Text    name=email    kazlausko@gmail.com
        
        # Radio buttonas gale
        
        # Press Keys    xpath=/html/body/div[2]/main/div/div/div/div/div[2]/div[2]/form/div[4]/div[9]/div/label/input    Sutinku su Paysera
        # Press Keys    xpath=//*[@type="checkbox"]    Sutinku su Paysera    
        # Click Element    xpath=*[@type="checkbox" and @text="Sutinku su Paysera"]
          
        
        Sleep    1


*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    
SEB LEASE TESTS
    #positive test scenario
        Create Webdriver     Firefox     executable_path=/usr/local/bin/geckodriver
        Sleep    1
        # Opening the link iframe class="calculator-frame" id="lease-calculator"
        Go to    https://www.seb.lt/eng/private/calculator-leasing
        Sleep    1
        # Cookie consent
        Click Element    link=I agree
        # Iframe
        Select Frame    id=lease-calculator
        #Radio button
        Press Keys    xpath=//*[@id="financial"]    Financial Lease
        Sleep    1
        Input Text    xpath=//*[@id="downpayment"]    20
        Press Keys    xpath=//*[@id="contractPeriod"]    5
        Press Keys    xpath=//*[@id="propertyType"]    used
        Press Keys    xpath=//*[@id="propertyYear"]    15
        Press Keys    xpath=//*[@id="carCategory"]    passenger
        Sleep    1
        Press Keys    xpath=//*[@id="carBrand"]    2
        Press Keys    xpath=//*[@id="carModel"]    15
        input text    xpath=//*[@id="interestRate"]    1
        Sleep    1
        Click Element    xpath=//*[@id="getSchedule"]
        Close All Browsers
        #negative test scenario 
        Create Webdriver     Firefox     executable_path=/usr/local/bin/geckodriver
        Go to    https://www.seb.lt/eng/private/calculator-leasing
        Click Element    link=I agree
        Select Frame    id=lease-calculator
        Press Keys    xpath=//*[@id="financial"]    Financial Lease
        Sleep    1
        Input Text    xpath=//*[@id="downpayment"]    -1
        Press Keys    xpath=//*[@id="contractPeriod"]    -1
        Press Keys    xpath=//*[@id="propertyType"]    used
        Press Keys    xpath=//*[@id="propertyYear"]    -1
        Press Keys    xpath=//*[@id="carCategory"]    passenger
        Sleep    1
        Press Keys    xpath=//*[@id="carBrand"]    -1
        Press Keys    xpath=//*[@id="carModel"]    -1
        input text    xpath=//*[@id="interestRate"]    -1
        Sleep    1
        Click Element    xpath=//*[@id="getSchedule"]
        Close All Browsers
        #negative test scenario 
        Create Webdriver     Firefox     executable_path=/usr/local/bin/geckodriver
        Go to    https://www.seb.lt/eng/private/calculator-leasing
        Click Element    link=I agree
        Select Frame    id=lease-calculator
        Press Keys    xpath=//*[@id="financial"]    Financial Lease
        Sleep    1
        Input Text    xpath=//*[@id="downpayment"]    ^
        Press Keys    xpath=//*[@id="contractPeriod"]    &
        Press Keys    xpath=//*[@id="propertyType"]    used
        Press Keys    xpath=//*[@id="propertyYear"]    f
        Press Keys    xpath=//*[@id="carCategory"]    passenger
        Sleep    1
        Press Keys    xpath=//*[@id="carBrand"]    $
        Press Keys    xpath=//*[@id="carModel"]    %
        input text    xpath=//*[@id="interestRate"]    1
        Sleep    1
        Click Element    xpath=//*[@id="getSchedule"]
        Close All Browsers 
        

*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    
SBLIZINGAS TESTS
    #Opening SEB.LT 
        Create Webdriver     Firefox     executable_path=/usr/local/bin/geckodriver
        Sleep    1
        # Opening the link iframe class="calculator-frame" id="lease-calculator"
        Go to    https://www.sblizingas.lt/kreditas-automobiliui/kredito-gavimas
        Sleep    1
        Click ELement    css=*[class="promptHeaderContainer"][tabindex="0"][value="2"]    
        Press Keys    id=credit_output    9000
        Sleep    5
        Press Keys    id=term_output    60
        Close All Browsers 
        