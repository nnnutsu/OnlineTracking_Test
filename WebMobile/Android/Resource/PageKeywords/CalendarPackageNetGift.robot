*** Settings ***
Library         Selenium2Library
Resource        Common.robot    
Resource          ../Localized/${ar_LANG}/CalendarPackageNetGiftLocalized.robot
Resource          ../Localized/${ar_LANG}/CommonLocalized.robot
Resource          ../PageRepository/CalendarPackageNetGiftRepository.robot
Resource          ../PageRepository/CommonRepository.robot


*** Keywords ***
Select On-Top Net Gift Internet Package
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Scroll Web To Element    ${btnNetGift${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Click Web Element    ${btnNetGift${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Verify On-Top Net Gift Internet Package    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    PackageInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}

Select On-Top Net Gift Internet Package 5GB 
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Scroll Web To Element    ${btnNetGift${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Click Web Element    ${btnNetGift${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Verify On-Top Net Gift Internet Package 5GB    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    PackageInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}

Verify On-Top Net Gift Internet Package
    [Arguments]    ${Size}    ${Price}    ${Day}
    Web Element Text Should Be    ${lblPackUnlimited}    ${txtPackUnlimited}
    Web Element Text Should Be    ${lblSizeInternet}    ${txtSpeed${Size}NetGift}
    Web Element Text Should Be    ${lblPriceInternet}     ${txtPrice${Price}NetGift}
    Web Element Text Should Be    ${lblAmountDayInternet}    ${txtAmount${Day}}

Verify On-Top Net Gift Internet Package 5GB 
    [Arguments]    ${Size}    ${Price}    ${Day}
    Web Element Text Should Be    ${lblInternet}    ${txtInternet}
    Web Element Text Should Be    ${lblSizeInternet}    ${txtSpeed${Size}NetGift}
    Web Element Text Should Be    ${lblPriceInternet}     ${txtPrice${Price}NetGift}
    Web Element Text Should Be    ${lblAmountDayInternet}    ${txtAmount${Day}}
Input Friend Number 
    [Arguments]    ${Number_Friend}
    Input Web Text    ${txtInputFriendNumber}    ${Number_Friend}
    Web Capture Screen At Verify Point    Input Friend Number   
    Confirm Package NetGift

Confirm Package NetGift
    Click Web Element    ${btnConFirmPackageNetGift}    

