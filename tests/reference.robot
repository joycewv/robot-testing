*** Settings ***
Documentation        This is some basic info about the whole suite
Library              SeleniumLibrary

#Run the script
#robot -d Results Tests/crm.robot


*** Variables ***

*** Test Cases ***
Should be able to add new customer
    [Documentation]            This is some basic info about the test 
    [Tags]                     1006 Smoke Contacts
    #Initiolize Selenium
    Set Selenium Speed         .3s
    Set Selenium Timeout       10s

    Log                        Starting the test case!   
    Open Browser               https://automationplayground.com/crm/    chrome

    Page Should Contain        Customers Are Priority One


    Click Link                 id=SignIn
    Page Should Contain        Login

    Input Text                 id=email-id       admin@robotframeworktutorial.com
    Input Text                 id=password       qwe
    Click Button               id=submit-id
    Page Should Contain        Our Happy Customer

    Click Link                 id=new-customer
    Page Should Contain        Add Customer

    Input Text                 id=EmailAddress      janedoe@gmail.com
    Input Text                 id=FirstName         Jane
    Input Text                 id=LastName          Doe
    Input Text                 id=City              Dallas
    Select From List By Value    id=StateOrRegion    TX
    Select Radio Button        gender    female
    Select Checkbox            name=promos-name
    Click Button                Submit
    Wait Until Page Contains    Success! New customer added.


    Sleep                      4s
    Close Browser
    

*** Keywords ***