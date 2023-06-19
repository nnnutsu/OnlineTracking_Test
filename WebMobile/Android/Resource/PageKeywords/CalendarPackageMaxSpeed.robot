*** Settings ***
Library         Selenium2Library
Resource        Common.robot    
Resource          ../Localized/${ar_LANG}/CalendarPackageMaxSpeedLocalized.robot
Resource          ../Localized/${ar_LANG}/CommonLocalized.robot
Resource          ../PageRepository/CalendarPackageMaxSpeedRepository.robot
Resource          ../PageRepository/CommonRepository.robot


*** Keywords ***
Select On-Top Max Speed Internet Package
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Click Web Element    ${btnInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Verify On-Top Max Speed Internet Package    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    PackageInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Confirm Package

Verify On-Top Max Speed Internet Package
    [Arguments]    ${Size}    ${Price}    ${Day}
    Web Element Text Should Be    ${lblInternet}    ${txtInternet}
    Web Element Text Should Be    ${lblSizeInternet}    ${txtSpeed${Size}MaxSpeedInternet}
    Web Element Text Should Be    ${lblPriceInternet}     ${txtPrice${Price}MaxSpeedInternet}
    Web Element Text Should Be    ${lblAmountDayInternet}    ${txtAmount${Day}}

Select On-Top Max Speed Internet Package NextG
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Click Web Element    ${btnInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Verify On-Top Max Speed Internet Package NextG    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    PackageInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Confirm Package
    
Verify On-Top Max Speed Internet Package NextG
    [Arguments]    ${Size}    ${Price}    ${Day}
    Web Element Text Should Be    ${lblInternetNextG}    ${txtInternetNextG}    
    Web Element Text Should Be    ${lblSizeNextG}    ${txtSizeNextG} 
    Web Element Text Should Be    ${lblWiFi}    ${txtWiFi}   
    Web Element Text Should Be    ${lblAisSuperWifi}    ${txtAisSuperWifi}
    Web Element Text Should Be    ${lblPriceInternet}     ${txtPrice${Price}MaxSpeedInternet}
    Web Element Text Should Be    ${lblAmountDayInternet}    ${txtAmount${Day}}  


# Up X3 
Select On-Top Max Speed Up X3 Internet Package 
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Click Web Element    ${btnInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Verify On-Top Max Speed Up X3 Internet Package   ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    PackageInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Confirm Package

Verify On-Top Max Speed Up X3 Internet Package
    [Arguments]    ${Size}    ${Price}    ${Day}
    Web Element Text Should Be    ${lblNetFullSpeedX3}    ${txtNetFullSpeedX3}
    Web Element Text Should Be    ${lblSizeInternet}    ${txtSpeed15GBNetFullSpeedX3}
    Web Element Text Should Be    ${lblPriceInternet}     ${txtPrice${Price}NetFullSpeedX3}
    Web Element Text Should Be    ${lblAmountDayInternet}    ${txtAmount${Day}}
    Web Element Text Should Be    ${lbl5GBTo15GBNetFullSpeedX3}    ${txt5GBTo15GBNetFullSpeedX3}
    Web Element Text Should Be    ${lblPeroidNetFullSpeedX3}    ${txtPeroidNetFullSpeedX3}
    


