*** Settings ***
Resource          OnlineTrackingCommon.robot
Resource          ../PageRepository/CalendarPackageSpecialInternetRepository.robot
Resource          ../PageRepository/OnlineTrackingCommonRepository.robot
Resource          ../Localized/${ar_LANG}/CalendarPackageSpecialInternetLocalized.robot

*** Keywords ***
Register Package Internet Non-Stop
    [Arguments]    ${SizeOfPackage}    ${SpeedOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Click Web Element    ${lblInternet${SpeedOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Verify On-Top Internet Non-Stop Package    ${SizeOfPackage}    ${SpeedOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    PackageInternet${SpeedOfPackage}${PriceOfPackage}${SpeedOfPackage}${AmountDayOfPackage}
    Select Confirm Package

Verify On-Top Internet Non-Stop Package
    [Arguments]    ${Size}    ${Speed}    ${Price}    ${AmountDay}
    Scroll Web To Element    ${lblPackPrice}
    #Web Element Text Should Be    ${lblInternetSpeed}    ${InternetSpeed} ${Internet${Speed}}
    Web Element Text Should Be    ${lblInternetUnlimited}    ${InternetUnlimited}  
    #Web Element Text Should Be    ${lblInternetSize}    ${txt${Size}InternetNonStop}   
    Web Element Text Should Be    ${lblInternetSizeNonStop}    ${Internet${Speed}}   
    Web Element Text Should Be    ${lblPackPrice}     ${Price${Price}}
    Web Element Text Should Be    ${lblPackDate}    ${Amount${AmountDay}}

Select Package NetGift Internet
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Click Web Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}SendToFriend}    #สมัครแพ็คเกจให้เพื่อน
    Verify Package NetGift Internet    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    VerifyFriendPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}

Verify Package NetGift Internet
    [Arguments]    ${Size}    ${Price}    ${AmountDay}
    Scroll Web To Element    ${lblPackDate}
    Web Element Text Should Be    ${lblInternetUnlimited}    ${InternetUnlimited}  
    Web Element Text Should Be    ${lblInternetSize}    ${Internet${Size}NetGift}
    Web Element Text Should Be    ${lblPackPrice}    ${Price${Price}}
    Web Element Text Should Be    ${lblPackDate}    ${Amount${AmountDay}}

Select Package NetGift Internet 5GB
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Click Web Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}SendToFriend}    #สมัครแพ็คเกจให้เพื่อน
    Verify Package NetGift Internet 5GB    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    VerifyFriendPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}

Verify Package NetGift Internet 5GB
    [Arguments]    ${Size}    ${Price}    ${AmountDay}
    Scroll Web To Element    ${lblPackDate}
    Web Element Text Should Be    ${lblInternet}    ${txtInternet} 
    Web Element Text Should Be    ${lblInternetSize}    ${Internet${Size}}
    Web Element Text Should Be    ${lblPackPrice}    ${Price${Price}}
    Web Element Text Should Be    ${lblPackDate}    ${Amount${AmountDay}}

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
    Input Web Text    ${txtInputFriendMobileNo}    ${Number}
    Web Capture Screen At Verify Point    InputFriendNumber
    Select Confirm Package For Friend

Select Confirm Package For Friend
    Click Web Element     ${btnConfirmSendToFriend} 

Verify Wait Register Package Page For Friend
    Web Element Text Should Be    ${lblMessageYourRequestHasBeenSubmitted}    ${MessageYourRequestHasBeenSubmittedToFriend}
    Web Capture Screen At Verify Point    WaitRegisterFriendPackagePage

Verify Wording Under Package Special Internet Refill 
    Scroll Web To Element    ${lblPostpaidCondition}
    Web Element Text Should Be    ${lblPostpaidCondition}    ${PostpaidCondition}
    Web Capture Screen At Verify Point    Package Special Internet Refill