*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
Taking Screenshot of Page and Element
    open browser  https://www.saucedemo.com/  chrome
    maximize browser window
    set selenium implicit wait  5 seconds
    capture element screenshot  xpath://div[@class='login_logo']  C:/Users/Kamaljit_Singh/Python_Projects/RobotFramework/ElementScreenshot.png
    capture page screenshot  C:/Users/Kamaljit_Singh/Python_Projects/RobotFramework/FullPageScreenshot.png
    close browser