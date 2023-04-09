*** Settings ***
Documentation        This is some basic info about the whole suite
Library              SeleniumLibrary

#Run the script
#robot -d Results tests/portfolio-site.robot


*** Variables ***

*** Test Cases ***
Able to open website successfully
    [Documentation]            This is some basic info about the test 
    [Tags]                     Robot testing contact section
    #Initiolize Selenium
    Set Selenium Speed         .3s
    Set Selenium Timeout       10s

    Log                        Starting the test case!   
    Open Browser               https://joycew.dev/    chrome

    Sleep    3s

Navigate to Contact Section

    Page Should Contain        Front-End Developer

    Sleep    3s


    Click Link                 Contact
    Sleep    3s

Should be able to fill the form and submit
    Page Should Contain        Fill up the form to keep in touch

    Input Text                 id=firstName      robot
    Input Text                 id=email      email placeholder
    Input Text                 id=comment      2nd robot testing, more than 25 characters and more
    Click Button               Send
    

Close the browser
    Sleep                      3s
    Close Browser
    
*** Keywords ***