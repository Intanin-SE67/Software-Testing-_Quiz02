*** Settings ***
Library             SeleniumLibrary
Suite Setup         Open Browser           https://reg.up.ac.th/   chrome
Suite Teardown      Close Browser    

*** Variables ***
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Keywords ***

Click Login Button
    Click element       xpath=/html/body/header/div[1]/div[2]/div[3]/div/button

Input UserName 
    Input text          //*[@id="user-name"]        ${USERNAME}   
 
Input Password
    Input Text        //*[@id="password"]       ${USERNAME}        

*** Test Cases ***
Login with Standard User
    Click Login Button
    Input UserName 
    Input Password


