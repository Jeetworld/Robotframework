*** Settings ***
Library  SeleniumLibrary
*** Keywords ***
LaunchBrowser
    [Arguments]  ${appurl}  ${brwosername}
    open browser  ${appurl}  ${brwosername}
    maximize browser window
    set selenium implicit wait  5 seconds
    ${titleOfThePage}=  get title
    [Return]  ${titleOfThePage}