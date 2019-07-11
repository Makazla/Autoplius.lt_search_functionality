*** Settings ***
Library    SeleniumLibrary  
*** Test Cases ***
    

LEASE CALCULATOR
        # Opening the link
        Create Webdriver     Chrome     executable_path=/usr/local/bin/chromedriver
        Go to    ${URL}
        # Accept cookies
        Click Element    link=Agree
        # Choose the type of lease #financial
        Click Element    xpath=//*[contains(text(), "financial")]   
        # Positives property price #6000
        Input Text    id=price    6000  
        Set Browser Implicit Wait    5
        Close All Browsers 
    
*** Variables ***
${URL}    https://www.seb.lt/eng/private/calculator-leasing

