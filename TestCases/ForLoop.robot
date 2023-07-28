*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
#ONE_ForLoop
#    FOR    ${index}    IN RANGE    1    11
#        Log to console    ${index}
#    END

#TWO
#    FOR    ${index}    IN    1    11      22      44      55
#        Log to console    ${index}
#    END

THREE
    @{listname}  create list  111  'Hello How are you'  4.55  56  "HELLO"   #creating list with @{listname} here
        FOR  ${i}  IN  @{listname}
            log to console  ${i}
            log  ${i}
            exit for loop if  ${i}==4.55
        END



*** Keywords ***
