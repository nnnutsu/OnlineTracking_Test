*** Settings ***
Library         Selenium2Library
Resource        Common.robot    
Resource          ../Localized/${ar_LANG}/CalendarPackageNonStopLocalized.robot
Resource          ../Localized/${ar_LANG}/CommonLocalized.robot
Resource          ../PageRepository/CalendarPackageNonStopRepository.robot
Resource          ../PageRepository/CommonRepository.robot


*** Keywords ***
Select On-Top Internet Non-Stop Package
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Click Web Element    ${btnNonStop${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Verify On-Top Internet Non-Stop Package    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    PackageInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Confirm Package
    Confirm NonStop Page    

Verify On-Top Internet Non-Stop Package
    [Arguments]    ${Size}    ${Price}    ${Day}
    Web Element Text Should Be    ${lblSpeedFast}    ${txtInternetSpeed}
    Web Element Text Should Be    ${lblAmountSpeedFast}    ${txt${Size}}   
    Web Element Text Should Be    ${lblPriceInternet}     ${txtPrice${Price}InternetNonStop}
    Web Element Text Should Be    ${lblAmountDayInternet}    ${txtAmount${Day}}

Confirm NonStop Page
    ${status}=    Run Keyword And Return Status    Web Element Should Be Visible    ${btnConfirmNonStopPage} 
    Run Keyword If    '${status}'=='True'    Click Web Element    ${btnConfirmNonStopPage}     