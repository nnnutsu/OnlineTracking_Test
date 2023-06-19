*** Settings ***
Resource          OnlineTrackingCommon.robot
Resource          ../PageRepository/CalendarPackageSpecialInternetRepository.robot
Resource          ../PageRepository/OnlineTrackingCommonRepository.robot
Resource          ../Localized/${ar_LANG}/CalendarPackageSpecialInternetLocalized.robot

*** Keywords ***
Register Package Internet Non-Stop
    [Arguments]    ${SizeOfPackage}    ${SpeedOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage} 
    Click Mobile Element    ${lblInternet${SpeedOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Verify On-Top Internet Non-Stop Package    ${SizeOfPackage}    ${SpeedOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Mobile Capture Screen At Verify Point    PackageInternet${SpeedOfPackage}${PriceOfPackage}${SpeedOfPackage}${AmountDayOfPackage}
    Select Confirm Package

Verify On-Top Internet Non-Stop Package
    [Arguments]    ${Size}    ${Speed}    ${Price}    ${AmountDay}
    Swipe By Percent    50    60    50    40
    #${lblInternetSpeed}    Get Mobile Text    ${lblInternetSpeed}
    #Should Be Equal    ${lblInternetSpeed}    ${InternetSpeed} ${Internet${Speed}}
    ${lblInternetUnlimited}    Get Mobile Text    ${lblInternetUnlimited}
    Should Be Equal    ${lblInternetUnlimited}    ${InternetUnlimited}  
    #${lblInternetSize}    Get Mobile Text     ${lblInternetSize}
    #Should Be Equal    ${lblInternetSize}    ${txt${Size}InternetNonStop}  
    #${lblInternetSecondSpeed}   Get Mobile Text     ${lblInternetSecondSpeed}
    #Should Be Equal    ${lblInternetSecondSpeed}    ${Internet${Speed}}
    #${lblPackPrice}    Get Mobile Text    ${lblPackPriceNonStop}
    #Should Be Equal    ${lblPackPrice}     ${Price${Price}}
    #${lblPackDate}    Get Mobile Text    ${lblPackDate}
    #Should Be Equal    ${lblPackDate}    ${Amount${AmountDay}}

Register On-Top Internet UpSpeed Package
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Swipe By Percent    50    60    50    40
    Click Mobile Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}    #สมัครแพ็คเกจ
    Verify On-Top Internet UpSpeed Package    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Mobile Capture Screen At Verify Point    VerifyPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Select Confirm Package

Verify On-Top Internet UpSpeed Package
    [Arguments]    ${Size}    ${Price}    ${AmountDay}
    #Swipe by Percent    50    30    50    40
    ${lblInternet}    Get Mobile Text    ${lblInternet}
    Should Be Equal    ${lblInternet}    ${txtInternet}
    #${lblInternetSecondSpeed}   Get Mobile Text     ${lblInternetSecondSpeed}
    #Should Be Equal    ${lblInternetSecondSpeed}    ${Internet${Size}}
    #${lblPackPrice}    Get Mobile Text    //XCUIElementTypeOther[15]/XCUIElementTypeStaticText
    #Should Be Equal    ${lblPackPrice}     ${Price${Price}}
    #${lblPackDate}    Get Mobile Text    ${lblPackDate}
    #Should Be Equal    ${lblPackDate}    ${Amount${AmountDay}}

Select Package NetGift Internet
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Swipe By Percent    50    60    50    40
    Click Mobile Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}SendToFriend}    #สมัครแพ็คเกจให้เพื่อน
    Verify Package NetGift Internet    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Mobile Capture Screen At Verify Point    VerifyFriendPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}

Verify Package NetGift Internet
    [Arguments]    ${Size}    ${Price}    ${AmountDay}
    #Swipe To Element    ${lblPackDate}
    ${lblInternetUnlimited}    Get Mobile Text    ${lblInternetUnlimited}
    Should Be Equal    ${lblInternetUnlimited}    ${InternetUnlimited}  
    #${lblInternetSize}    Get Mobile Text    ${lblInternetSize}
    #Should Be Equal    ${lblInternetSize}    ${Internet${Size}NetGift}
    #${lblPackPrice}    Get Mobile Text    ${lblPackPrice}
    #Should Be Equal    ${lblPackPrice}    ${Price${Price}}
    #${lblPackDate}    Get Mobile Text    ${lblPackDate}
    #Should Be Equal    ${lblPackDate}    ${Amount${AmountDay}}

Select Package NetGift Internet 5GB
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Swipe By Percent    50    60    50    40
    Swipe By Percent    50    60    50    40
    Click Mobile Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}SendToFriend}    #สมัครแพ็คเกจให้เพื่อน
    Verify Package NetGift Internet 5GB    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Mobile Capture Screen At Verify Point    VerifyFriendPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}

Verify Package NetGift Internet 5GB
    [Arguments]    ${Size}    ${Price}    ${AmountDay}
    #Swipe To Element    ${lblPackDate}
    ${lblInternet}    Get Mobile Text    ${lblInternet}
    Should Be Equal    ${lblInternet}    ${txtInternet} 
    #${lblInternetSize}    Get Mobile Text    ${lblInternetSize}
    #Should Be Equal    ${lblInternetSize}    ${Internet${Size}}
    #${lblPackPrice}    Get Mobile Text    ${lblPackPrice}
    #Should Be Equal    ${lblPackPrice}    ${Price${Price}}
    #${lblPackDate}    Get Mobile Text    ${lblPackDate}
    #Should Be Equal    ${lblPackDate}    ${Amount${AmountDay}}

Verify SMS Send Package On Friend Number
    [Arguments]    ${IPAppium}    ${PlatfromName}    ${PlatfromVersion}    ${SN}
    Open SMS App    ${IPAppium}    ${PlatfromName}    ${PlatfromVersion}    ${SN}
    Wait SMS    ${PlatfromName}    1    60    AIS
    ${sms}=    Read SMS    ${PlatfromName}    AIS    1
    Should Match Regexp    ${sms[0]}    .*
    Mobile Capture Screen At Verify Point    SMSAfterRegisterPackage
    Close SMS App    ${PlatfromName}    ${SN}

Input Friend Mobile Number
    [Arguments]    ${Number}
    Input Mobile Text    ${txtInputFriendMobileNo}    ${Number}
    Select Done On Keyboard
    Mobile Capture Screen At Verify Point    InputFriendNumber
    Select Confirm Package For Friend

Select Confirm Package For Friend
    #Swipe By Percent    50    40    50    60
    #Click Mobile Element     ${btnConfirmSendToFriend} 
    AISAppiumEx.Click Element At Coordinates    273    633
    AISAppiumEx.Click Element At Coordinates    273    600  
    Sleep    5s  

Verify Wait Register Package Page For Friend
    ${lblMessageYourRequestHasBeenSubmitted}    Get Mobile Text    ${lblMessageYourRequestHasBeenSubmitted}
    Should Be Equal    ${lblMessageYourRequestHasBeenSubmitted}    ${MessageYourRequestHasBeenSubmittedToFriend}
    Mobile Capture Screen At Verify Point    WaitRegisterFriendPackagePage

Verify Wording Under Package Special Internet Refill Package
    #Swipe by Percent    50    30    50    80
    Swipe To Element    ${lblPostpaidCondition}
    ${lblPostpaidCondition}    Get Mobile Text    ${lblPostpaidCondition} 
    Should Be Equal    ${lblPostpaidCondition}    ${PostpaidCondition}
    Mobile Capture Screen At Verify Point    Package Special Internet Refill Package