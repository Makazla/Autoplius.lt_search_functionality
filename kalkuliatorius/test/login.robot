*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    
OPEN SEB LT CALCULATOR
        Create Webdriver     Chrome     executable_path=/usr/local/bin/chromedriver
        Go to    https://www.seb.lt/eng/private/calculator-leasing
        Set Browser Implicit Wait    5
        Close All Browsers 
        
ENETER VALUES TO SEB LT CALCULATOR
        Create Webdriver     Chrome     executable_path=/usr/local/bin/chromedriver
        Go to    https://www.seb.lt/eng/private/calculator-leasing
        Set Browser Implicit Wait    5
        Input Text    
        Close All Browsers 
    
        