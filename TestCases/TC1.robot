*** Settings ***
Library  SeleniumLibrary
#this contains library part
*** Variables ***
${browser}     chrome
${url}          https://facebook.com
*** Test Cases ***
LoginTest
    open browser  ${url}  ${browser}
    loginToFacebook
    close browser
*** Keywords ***
#this contains common set of action/task under single keyword and that can be used in any TC
loginToFacebook
    input text  id:email        Singhkamaljit65
    input text  id:pass     Singhkamaljit65
    #click link  id:identifierNext
