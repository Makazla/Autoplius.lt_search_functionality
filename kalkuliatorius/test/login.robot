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
        # Change languages 
        CLick Element    link=Lietuvių
        Set Browser Implicit Wait    5
        Close All Browsers 
    


*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***

SEB.LV LEASE CALCULATOR
        # Opening the link
        Create Webdriver     Chrome     executable_path=/usr/local/bin/chromedriver
        Go to    https://www.seb.lv/eng/loan-and-leasing/leasing/leasing-calculator
        # Accept cookies
        Click Element    link=Agree
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
    

