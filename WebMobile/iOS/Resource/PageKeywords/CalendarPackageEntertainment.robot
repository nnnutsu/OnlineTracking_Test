*** Settings ***
Resource          OnlineTrackingCommon.robot
Resource          ../PageRepository/CalendarPackageEntertainmentRepository.robot
Resource          ../Localized/${ar_LANG}/CalendarPackageEntertainmentLocalized.robot

*** Keywords ***
Select Play Premium Unlimited Package
    Click Mobile Element    ${btnPlayPremiumUnlimitedPackage}

Select Play Premium Package
    Click Mobile Element   ${btnPlayPremiumPackage}

Select Hooq Package
    Click Mobile Element    ${btnHooqPackage}

Select Viu Package
    Swipe By Percent    50    40    50    50
    Click Mobile Element    ${btnViuPackage}

Select Karaoke 7 Days Package
    Swipe By Percent    50    40    50    50
    Click Mobile Element     ${btnKaraoke7DaysPackage}

Select Karaoke 30 Days Package
    Swipe By Percent    50    40    50    50
    Click Mobile Element     ${btnKaraoke30DaysPackage}

Verify Entertainment Package
    [Arguments]    ${PackageName}    ${Cost}    ${AmountDay}
    #Swipe to element    ${imgConfirm${PackageName}${AmountDay}Package}
    Swipe By Percent    50    40    50    50
    Wait Mobile Until Element Visible    ${imgConfirm${PackageName}${AmountDay}Package}
    Mobile element text should be    ${lblEntertainmentPackPrice}    ${Price${Cost}}
    #Mobile element text should be    ${lblEntertainmentPackDate}    ${Amount${AmountDay}}
    #Verify lbl Under Package
    Run Keyword If    '${PackageName}${AmountDay}'!='Karaoke30Days'    Mobile Element Text Should Be    ${lblUnderPackageFree${PackageName}${AmountDay}}    ${UnderPackageFree${PackageName}${AmountDay}}
    Mobile Capture Screen At Verify Point    Verify${PackageName}Package
    Select Confirm Package Entertainment

Select Confirm Package Entertainment
    #Swipe By Percent    50    30    50    80
    #Switch To NativeApp
    #Click Mobile Element   	xpath=(//XCUIElementTypeStaticText[@name="ยืนยัน"])[2]   #(//XCUIElementTypeStaticText[@name="Confirm"])[2]
    #Switch To WebView
    AISAppiumEx.Click Element At Coordinates    273    633
    AISAppiumEx.Click Element At Coordinates    273    600
