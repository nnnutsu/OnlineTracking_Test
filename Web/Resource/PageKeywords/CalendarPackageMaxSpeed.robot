*** Settings ***
Resource          OnlineTrackingCommon.robot
#Resource          ../PageRepository/CalendarPackageMaxSpeedRepository.robot
Resource          ../PageRepository/CalendarPackageMaxSpeedX3Repository.robot
Resource          ../PageRepository/OnlineTrackingCommonRepository.robot
Resource          ../Localized/${ar_LANG}/CalendarpackageMaxSpeedLocalized.robot

*** Keywords ***
Register Package 8GB
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Click Web Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}    #สมัครแพ็คเกจ
    Verify Package 8GB    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    VerifyPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Select Confirm Package

Verify Package 8GB
    [Arguments]    ${Size}    ${Cost}    ${AmountDay}
    Web Element Text Should Be    ${lblInternetSize8GBLine1}    ${InternetNextG3G4G}
    Web Element Text Should Be    ${lblInternetSize8GBLine2}    ${Internet${Size}}
    Web Element Text Should Be    ${lblInternetSize8GBLine3}    ${Wifi}
    Web Element Text Should Be    ${lblInternetSize8GBLine4}    ${AisWifiUnlimited}
    Web Element Text Should Be    ${lblPackPrice}    ${Price${Cost}}
    Web Element Text Should Be    ${lblPackDate}    ${Amount${AmountDay}}

Register Package Net Full Speed X3
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Click Web Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}    #สมัครแพ็คเกจ
    Verify Package Net Full Speed X3    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    VerifyPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Select Confirm Package

Verify Package Net Full Speed X3
    [Arguments]    ${Size}    ${Price}    ${AmountDay}
    Scroll Web To Element    ${lblPackDate}
    Web Element Text Should Be    ${lblInternetSpeedX3}    ${txtInternetSpeedX3}
    Web Element Text Should Be    ${lblInternetSize}    ${Internet${Size}}
    Web Element Text Should Be    ${lblPackPrice}    ${Price${Price}}
    Web Element Text Should Be    ${lblPackDate}    ${Amount${AmountDay}}

Verify Wording Under Package Max Speed Internet Down X3   
    Scroll Web To Element    //*[@id="next"]
    Wait Web Until Page Does Not Visible Element    ${lblDesInternetSpeedX3}    #${DesInternetSpeedX3}
    Web Capture Screen At Verify Point    Package Max Speed Internet Down X3

Verify Wording Under Package Max Speed Internet Up X3
    Scroll Web To Element    ${lblDesInternetSpeedX3}
    Web Element Text Should Be    ${lblDesInternetSpeedX3}    ${DesInternetSpeedX3}
    Web Capture Screen At Verify Point    Package Max Speed Internet Up X3

Select Register Package Banner Mao Mao Voice
    Click Web Element    xpath=//app-banner/div

Verify Package Banner Mao Mao Voice
    [Arguments]    ${Minute}    ${Price}    ${AmountDay}
    Run Keyword If    "${ar_LANG}"=="EN"    Click Web Element    //*[@id="lang_en"]    
    Web Element Text Should Be    ${lblMaoMaoVoice}    ${MaoMaoVoice}    #Mao Mao Voice
    Web Element Text Should Be    ${lblMinuteMaoMaoVoice}    ${200Minute}    #200 minute
    Web Element Text Should Be    ${lblPriceMaoMaoVoice}    ${MaoMaoVoice${Price}}    #79Baht
    Web Element Text Should Be    ${lblDayMaoMaoVoice}    ${MaoMaoVoice${AmountDay}}    #7Days
    Web Capture Screen At Verify Point    Package Banner Mao Mao Voice
