*** Settings ***
Library         Selenium2Library
Resource        Common.robot    
Resource          ../Localized/${ar_LANG}/CalendarPackageUpSpeedLocalized.robot
Resource          ../PageRepository/CalendarPackageUpSpeedRepository.robot
Resource          ../PageRepository/CalendarPackageFixCaseRepository.robot    # ใช้สำหรับ Scroll bar


*** Keywords ***
Select On-Top Up Speed Internet Package
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Scroll Web To Element    ${lblWordingUnderTable_UpSpeedInternet} 
    Click Web Element    ${btnInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Verify On-Top Up Speed Internet Package    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    PackageInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Confirm Package

Verify On-Top Up Speed Internet Package
    [Arguments]    ${Size}    ${Price}    ${Day}
    Web Element Text Should Be    ${lblInternet}    ${txtInternet}
    Web Element Text Should Be    ${lblSizeInternet}    ${txtSpeed${Size}UpSpeedInternet}
    Web Element Text Should Be    ${lblPriceInternet}     ${txtPrice${Price}UpSpeedInternet}
    Web Element Text Should Be    ${lblAmountDayInternet}    ${txtAmount${Day}}
