*** Settings ***
Library  SeleniumLibrary
Documentation  LoginFunctionality
#this contains library part
*** Variables ***
${browser}     chrome
${url}          https://facebook.com
${user_name}  id:email
*** Test Cases ***
CheckInputBox for username in Facebook
    set selenium implicit wait  5 seconds
    [documentation]  This is SMOKE suite TestCase
    [tags]  SMOKE
    ${speed}=   get selenium speed
    log to console      ${speed}
    set selenium speed  1seconds
    open browser  ${url}  ${browser}
    Maximize Browser Window
    title should be  Facebook – log in or sign up
    #sleep  2
    click element  ${user_name}
    scroll element into view  xpath://a[@title='Visit our contact uploading and non-users notice.']
    set selenium timeout    10 seconds      #this is only for below SINGLE line of code
    wait until element is visible  ${user_name}    #this is timeout == explicit wait . default time is 5 seconds
    element should be visible  ${user_name}
    element should be enabled  ${user_name}
    input text  ${user_name}  KamaljitSingh
    #sleep  2
    clear element text  ${user_name}
    #sleep  2
    click element  xpath://a[@data-testid='open-registration-form-button']
     #sleep  2
    select radio button  sex  1
    close all browsers
    #close browser
*** Keywords ***

