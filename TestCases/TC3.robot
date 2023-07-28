*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}     chrome
${url}          https://artoftesting.com/samplesiteforselenium
*** Test Cases ***
Automation Testing Test Case
    set selenium implicit wait  5 seconds
    open browser  ${url}  ${browser}
    maximize browser window
    ${locOne}=  get location    #capture the current url
    log to console  "this is the titile of the page ${locOne}"
    click element  xpath://button[@onclick='generateConfirmBox()']

    #handle alert  accept
#    handle alert    dismiss
#    handle alert    leave
    alert should be present     Press a button!
    go to  https://www.facebook.com
    ${locTwo}=  get location
    log to console  "this is location of another url ${locTwo}"

    go back     #swicth to back to previous URL
    ${locThree}=  get location
    log to console  "this is location of back to  url ${locThree}"
    close browser

*** Keywords ***
