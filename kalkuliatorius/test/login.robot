*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    
Autoplius.LT pasizaidimui
        # Opening the link
        Create Webdriver     Chrome     executable_path=/usr/local/bin/chromedriver
        Go to    https://autoplius.lt/
        Set Browser Implicit Wait    5
        # CLick Element    link=RU   
        # CLick Element    id=cookies_policy     
        # Click Element    Xpath=//input[@attribute='Новые'
        # Click Element    link=I agree
        # Set Browser Implicit Wait    5
        Set Browser Implicit Wait    5
        Click Element    xpath=/html/body/div[1]/div[3]/div/div[1]/div[1]/div[2]/div[1]/form/div[5]/div[2]/a
        Input Text    name=qt    alfa romeo spider
        # Click Element    link=Detali Paieška   
        Click Element    xpath=/html/body/div[1]/div[2]/div[1]/div[2]/div[2]/div/div[1]/form/div[2]/a/strong/span  
        Click Element    link=Redaguoti paiešką   
        Press keys    name=search_cats_1     2
        Set Browser Implicit Wait    5
        Press Keys    name=make_id_list    Alfa Romeo
        Press Keys    name=make_id_sublist_portal    
        # Press keys    name=make_id_list    97
        Set Browser Implicit Wait    5
        Press Keys    id=make_date_from    2006
        Press Keys    name=sell_price_from    5000
        Press Keys    name=technical_passport    1
        Press keys    id=search_form_submit_button    Atnaujinti
        # Click Element    name=make_id_list    
        # Change languages 
        # Click Element    link=Lietuvių
        # Set Browser Implicit Wait    15
        # Change languages 
        # Click Element    link=English
        # Set Browser Implicit Wait    15
        Close All Browsers 
    

*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    
SEB.LT LEASE CALCULATOR
        # Opening the link
        Create Webdriver     Chrome     executable_path=/usr/local/bin/chromedriver
        Go to    https://www.seb.lt/eng/private/calculator-leasing
        # Accept cookies
        Click Element    link=Agree
        Set Browser Implicit Wait    5
        Input Text    name=price    lalala
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
    

