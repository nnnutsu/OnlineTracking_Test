*** Settings ***
Resource          OnlineTrackingCommon.robot
Resource          ../PageRepository/CalendarPackageMaxSpeedRepository.robot
Resource          ../PageRepository/OnlineTrackingCommonRepository.robot
Resource          ../Localized/${ar_LANG}/CalendarpackageMaxSpeedLocalized.robot

*** Keywords ***

Register Package 8GB
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Swipe To Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Click Mobile Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}    #สมัครแพ็คเกจ
    Verify Package 8GB    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Mobile Capture Screen At Verify Point    VerifyPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Select Confirm Package

Verify Package 8GB
    [Arguments]    ${Size}    ${Cost}    ${AmountDay}
    Swipe by Percent    50    30    50    40
    ${lblInternetSize8GBLine1}    Get Mobile Text    ${lblInternetSize8GBLine1}
    Should Be Equal    ${lblInternetSize8GBLine1}    ${InternetNextG3G4G}
    ${lblInternetSize8GBLine2}    Get Mobile Text   ${lblInternetSize8GBLine2}
    Should Be Equal    ${lblInternetSize8GBLine2}    ${Internet${Size}}
    ${lblInternetSize8GBLine3}    Get Mobile Text    ${lblInternetSize8GBLine3}
    Should Be Equal    ${lblInternetSize8GBLine3}    ${Wifi}
    ${lblInternetSize8GBLine4}    Get Mobile Text    ${lblInternetSize8GBLine4}
    Should Be Equal    ${lblInternetSize8GBLine4}    ${AisWifiUnlimited}
    #${lblPackPrice}    Get Mobile Text    ${lblPackPrice}
    #Should Be Equal    ${lblPackPrice}    ${Price${Cost}}
    #${lblPackDate}    Get Mobile Text    ${lblPackDate}
    #Should Be Equal    ${lblPackDate}    ${Amount${AmountDay}}


Register Package Net Full Speed X3
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Swipe by Percent    50    30    50    40
    Click Mobile Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}    #สมัครแพ็คเกจ
    Verify Package Net Full Speed X3    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Mobile Capture Screen At Verify Point    VerifyPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Select Confirm Package

Verify Package Net Full Speed X3
    [Arguments]    ${Size}    ${Price}    ${AmountDay}
    Swipe by Percent    50    30    50    40
    ${lblInternetSpeedX3}    Get Mobile Text    ${lblInternetSpeedX3}
    Should Be Equal    ${lblInternetSpeedX3}    ${txtInternetSpeedX3}
    #${lblInternetSize}    Get Mobile Text    ${lblInternetSize}
    #Should Be Equal    ${lblInternetSize}    ${Internet${Size}}
    #${lblPackPrice}    Get Mobile Text    ${lblPackPrice}
    #Should Be Equal    ${lblPackPrice}    ${Price${Price}}
    #${lblPackDate}    Get Mobile Text    ${lblPackDate}
    #Should Be Equal    ${lblPackDate}    ${Amount${AmountDay}}
    Wait Mobile Until Element Visible    ${lblGetInternetTriple15GB}    
    Wait Mobile Until Element Visible    ${lblSubscribePeriod}   


### FixCase
Verify Wording Under Package Max Speed Internet Up X3
    Swipe by Percent    50    30    50    40
    ${lblDesInternetSpeedX3}    Get Mobile Text    ${lblDesInternetSpeedX3}
    Should Be Equal    ${lblDesInternetSpeedX3}    ${DesInternetSpeedX3}
    Mobile Capture Screen At Verify Point    Package Max Speed Internet Up X3

Verify Wording Under Package Max Speed Internet Down X3
    Swipe by Percent    50    30    50    40
    AISAppiumEx.Wait Until Page Does Not Contain Element    ${lblDesInternetSpeedX3}
    Mobile Capture Screen At Verify Point    Package Max Speed Internet Down X3

Select Register Package Banner Mao Mao Voice
    Click Mobile Element    xpath=//XCUIElementTypeOther[@name="On-Top Package 3g /4g แพ็กเสริมเน็ตเลือกง่ายๆ ช่วยค้นหาแพ็กเสริมเน็ตที่ใช่สะดวก ง่าย รวดเร็ว"]/XCUIElementTypeOther[4]

Verify Package Banner Mao Mao Voice
    [Arguments]    ${min}    ${baht}    ${day}    
    Mobile Capture Screen At Verify Point     Package Banner Mao Mao Voice ${min}${baht}${day}