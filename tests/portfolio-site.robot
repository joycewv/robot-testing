*** Settings ***
Documentation        This is some basic info about the whole suite
Library              SeleniumLibrary

#Run the script
#robot -d Results Tests/crm.robot


*** Variables ***

*** Test Cases ***
Should be able to add new customer
    [Documentation]            This is some basic info about the test 
    [Tags]                     Robot testing contact section
    #Initiolize Selenium
    Set Selenium Speed         .3s
    Set Selenium Timeout       10s

    Log                        Starting the test case!   
    Open Browser               https://joycew.dev/    chrome

    Sleep    3s

    Page Should Contain        Front-End Developer

    Sleep    3s


    Click Link                 Contact
    Sleep    3s


    Page Should Contain        Fill up the form to keep in touch

    Input Text                 id=firstName      robot
    Input Text                 id=email      joyce.wv2022@gmail.com
    Input Text                 id=comment      First robot testing, more than 25 characters
    Click Button               Send
    


    Sleep                      4s
    Close Browser
    

*** Keywords ***