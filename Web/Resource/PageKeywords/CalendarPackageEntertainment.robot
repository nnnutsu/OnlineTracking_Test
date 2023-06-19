*** Settings ***
Resource          OnlineTrackingCommon.robot
Resource          ../PageRepository/CalendarPackageEntertainmentRepository.robot
Resource          ../Localized/${ar_LANG}/CalendarPackageEntertainmentLocalized.robot

*** Keywords ***
Select Play Premium Unlimited Package
    Click Web Element    ${btnPlayPremiumUnlimitedPackage}

Select Play Premium Package
    Click Web Element   ${btnPlayPremiumPackage}

Select Hooq Package
    Click Web Element    ${btnHooqPackage}

Select Viu Package
    Click Web Element    ${btnViuPackage}

Select Karaoke 7 Days Package
    Click Web Element     ${btnKaraoke7DaysPackage}

Select Karaoke 30 Days Package
    Click Web Element     ${btnKaraoke30DaysPackage}

Verify Entertainment Package
    [Arguments]    ${PackageName}    ${Cost}    ${AmountDay}
    Scroll Web To Element    ${imgConfirm${PackageName}${AmountDay}Package}
    Web Element Should Be Visible    ${imgConfirm${PackageName}${AmountDay}Package}
    Web Element Text Should Be    ${lblEntertainmentPackPrice}    ${Price${Cost}}
    Web Element Text Should Be    ${lblEntertainmentPackDate}    ${Amount${AmountDay}}
    Run Keyword If    '${PackageName}${AmountDay}'!='Karaoke30Days'    Web Element Text Should Be    ${lblUnderPackageFree${PackageName}${AmountDay}}    ${UnderPackageFree${PackageName}${AmountDay}}
    Web Capture Screen At Verify Point    Verify${PackageName}Package
    Select Confirm Package
