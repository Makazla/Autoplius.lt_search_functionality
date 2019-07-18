*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    
AUTOPLIUS SEARCH TEST
        
        Create Webdriver     Chrome     executable_path=/usr/local/bin/chromedriver
        Sleep    2
        # Opening the link
        Go to    https://autoplius.lt/
        Sleep    2
        # Ieskome tik naudotu automobiliu- nuimame varnele nuo "nauji auto"
        Press Keys    xpath=/html/body/div[1]/div[3]/div/div[1]/div[1]/div[2]/div[1]/form/div[1]/div[2]/label[2]    Nauji
        Sleep    2
        # I paieskos teksto laukeli ivedame ranka ieskomo automobilio marke ir modeli
        Input Text    name=qt    alfa romeo spider 
        Sleep    2         
        # Redaguojame paieska i isplestine  
        Click Element    link=Detali paieška   
        Sleep    2
        # Pasirenkame ieskomo automobilio marke
        Press Keys    name=make_id_list    Alfa Romeo
        Sleep    2
        # Pasirenkame ieskomos Alfa Romeo modeli
        Press Keys    xpath=//*[@id="make_id_sublist_portal"]    Mito
        Sleep    2
        # Ikeliame pasirinkima i filtra  
        Press Keys    id=addbtn_make_id    Įkelti
        Sleep    2
        # Paslenkame ekrano vaizda zemyn
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
        Sleep    2
        # Pasirenkame metus "nuo"
        Select From List By Value    xpath=//*[@id="make_date_from"]    2006
        Sleep    2
        # Pasirenkame kaina "nuo"
        Select From List By Value    xpath=//*[@id="sell_price_from"]    2000
        Sleep    2
        # Pasirenkame "be defektu"
        Select From List By Value    xpath=//*[@id="has_damaged_id"]    10924
        Sleep    2
        # Pasirenkame "ieskoti automobilio su galiojancia TA"
        Press Keys    id=technical_passport    1
        Sleep    2
        # Ikeliame papildomai i paieska Alfa Romeo Spider
        Press Keys    xpath=//*[@id="make_id_sublist_portal"]    Spider
        Sleep    2
        # Patvirtiname ikelima  
        Press Keys    id=addbtn_make_id    Įkelti
        Sleep    2
        # Triname tesksta is paieskos langelio
        Clear Element Text    xpath=//input[@id='qt']  
        Sleep    2
        # Patvirtiname slapukus       
        Click Element    xpath=/html/body/div[1]/div[4]/div/div[2]
        Sleep    2
        # Atnaujiname paieska
        Press Keys    xpath=/html/body/div[1]/div[2]/div[1]/div[2]/div[2]/div/div[1]/form/div[2]/a/strong/span    Ieškoti
        Sleep    2
        Close All Browsers 
    

*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    
SEB.LT LEASE CALCULATOR
        # Opening the link
        Create Webdriver     Chrome     executable_path=/usr/local/bin/chromedriver
        Go to    https://www.seb.lt/eng/private/calculator-leasing
        # Accept cookies
        # Click Element    id=financial 
        Input Text    xpath=/html/body/div[1]/div/form/div[1]/div[2]/div/div    6000
        Set Browser Implicit Wait    5
        # Input Text    name=price    6000
        Change languages 
        Click Element    link=Lietuvių
        # Set Browser Implicit Wait    15
        # Change languages 
        # Click Element    link=English
        # Set Browser Implicit Wait    15
        Close All Browsers 
    


*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***

SEB.LV LEASE CALCULATOR
        # Opening the link
        Create Webdriver     Chrome     executable_path=/usr/local/bin/chromedriver
        Go to    https://www.seb.lv/eng/loan-and-leasing/leasing/leasing-calculator
        # Accept cookies
        Click Element    link=I Agree
        # Change languages 
        Click Element    link=Latviešu
        CLick Element    link=Русский
        # Wait for 5 seconds
        Set Browser Implicit Wait    5
        # Close the browser
        Close All Browsers 
    



*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***

SEB.EE LEASE CALCULATOR
        # Opening the link
        Create Webdriver     Chrome     executable_path=/usr/local/bin/chromedriver
        Go to    https://www.seb.ee/eng/loan-and-leasing/leasing/car-leasing#calculator
        # Accept cookies
        Click Element    link=Agree
        # Change languages 
        Click Element    link=Eesti
        Click Element    link=Русский
         # Wait for 5 seconds
        Set Browser Implicit Wait    5
         # Close the browser
        Close All Browsers 
    

