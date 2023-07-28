*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
*** Variables ***
${URL}      https://www.worldometers.info/geography/alphabetical-list-of-countries/
${browser}  chrome
*** Test Cases ***
Count the links on page
    ${title}=  LaunchBrowser  ${URL}  ${browser}
    log  ${title}
    log to console  ${title}
    ${size}=  get element count  xpath://a
    log to console  "this is the count === ${size}"

    FOR  ${i}  IN RANGE  1  ${size}
        ${linkTest}=  get text  xpath://a[${i}]
        log to console  ${linkTest}
    END
*** Keywords ***
