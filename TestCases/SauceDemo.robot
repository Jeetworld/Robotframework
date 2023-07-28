*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
*** Variables ***
${URL}      https://www.worldometers.info/geography/alphabetical-list-of-countries/
${browser}  chrome
*** Test Cases ***
LoginTest
    ${title}=  LaunchBrowser  ${URL}  ${browser}
    log  ${title}
    log to console  ${title}
    log to console  "***Test Case COmpleted***"
    execute javascript  window.scrollTo(0,2400)     #scroll till pixel mentioned
    sleep  3
    scroll element into view  xpath://td[text()='Netherlands']      #scroll till element mentioned
    sleep  3
    execute javascript  window.scrollTo(0,document.body.scrollHeight)       #scroll till end
    sleep  4