*** Settings ***
Resource          ../../../../../AisRobotBuffet/Common/Keywords/RedefineKeywords.txt
Resource          ../../../../../AisRobotBuffet/Common/Keywords/ParallelLocalConfigKeyWord.txt
Resource          ../../../../../AisRobotBuffet/Common/Keywords/RunOnFailKeyword.txt
Resource          ../../../../../AisRobotBuffet/Web/Generic/Keywords/WebGenericKeyword.txt
Resource          ../../../../../AisRobotBuffet/Mobile/Andriod/Keywords/SmsMoodKeywords.txt
Resource          ../PageVariable/OnlineTrackingCommonVariable.robot
Resource          ../PageRepository/CalendarPackageSpecialInternetRepository.robot
Resource          ../PageRepository/OnlineTrackingCommonRepository.robot
Resource          ../Localized/${ar_LANG}/OnlineTrackingCommonLocalized.robot

*** Keywords ***
Open Browser Online Tracking
    [Arguments]    ${IPSelenium}
    Open Web Browser    ${url_OnlineTrackongOnTop}    ${ar_BROWSER}    http://${IPSelenium}/wd/hub
    Maximize Browser Window
    Choose Language    ${ar_LANG}

Get SMS OTP From Mobile
    [Arguments]    ${IPAppium}    ${PlatfromName}    ${PlatfromVersion}    ${SN}
    Open SMS App    ${IPAppium}    ${PlatfromName}    ${PlatfromVersion}    ${SN}
    Wait SMS    ${PlatfromName}    1    60    #AIS
    ${sms}=    Read SMS    ${PlatfromName}    AIS    1
    ${arOTP}=    Get Regexp Matches    @{sms}[0]    \\d\\d\\d\\d
    ${OTP}=    Convert To String    @{arOTP}[0]
    Close SMS App    ${PlatfromName}    ${SN}
    [Return]    ${OTP}

Input OTP
    [Arguments]    ${IPAppium}    ${PlatfromName}    ${PlatfromVersion}    ${SN}
    ${OTP}=    Get SMS OTP From Mobile    ${IPAppium}    ${PlatfromName}    ${PlatfromVersion}    ${SN}
    Input Web Text    ${txtInputOTP}    ${OTP}
    Web Capture Screen At Verify Point    InputOTP
    Click Web Element    ${btnOK}

Verify SMS After Register Package
    [Arguments]    ${IPAppium}    ${PlatfromName}    ${PlatfromVersion}    ${SN}
    Open SMS App    ${IPAppium}    ${PlatfromName}    ${PlatfromVersion}    ${SN}
    Wait SMS    ${PlatfromName}    1    60    #AIS
    ${sms}=    Read SMS    ${PlatfromName}    AIS    1
    Should Match Regexp    ${sms[0]}    .*
    Mobile Capture Screen At Verify Point    SMSAfterRegisterPackage
    Close SMS App    ${PlatfromName}    ${SN}

Choose Language
    [Arguments]    ${ar_LANG}
    Run Keyword If    "${ar_LANG}"=="TH"    Click Web Element    ${btnLanguageTH}
    Run Keyword If    "${ar_LANG}"=="EN"    Click Web Element    ${btnLanguageEN}
    Web Element Text Should Be    ${lblHeaderOnTopPackage}    ${HeaderOnTopPackage}
    Sleep    3s

Choose Language On Register Page
    [Arguments]    ${ar_LANG}
    Check Ontop Package-recommend
    Run Keyword If    "${ar_LANG}"=="TH"    Choose Language TH On Register Page
    Run Keyword If    "${ar_LANG}"=="EN"    Choose Language EN On Register Page
    Sleep    3s
    Web Element Text Should Be    ${lblLogin}    ${Login}

Choose Language EN On Register Page
    ${size}    Selenium2Library.Get Element Size    ${btnLanguageENRegister}
    ${width}    Set Variable    ${size[0]}
    ${high}    Set Variable    ${size[1]}
    ${x}    Evaluate    -(${width}/3)
    ${y}    Evaluate    (${high}/3)
    Selenium2Library.Click Element At Coordinates    ${btnLanguageENRegister}    ${x}    ${y}

Choose Language TH On Register Page
    ${size}    Selenium2Library.Get Element Size    ${btnLanguageENRegister}
    ${width}    Set Variable    ${size[0]}
    ${high}    Set Variable    ${size[1]}
    ${x}    Evaluate    -(${width}/3)
    ${y}    Evaluate    (${high}/3)
    Selenium2Library.Click Element At Coordinates    ${btnLanguageThRegister}    ${x}    ${y}

Select Tab Max Speed Internet
    Click Web Element    ${MnuTabNetMaxSpeed}    #เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    Web Capture Screen At Verify Point    TabMaxSpeedInternet

Select Tab Special Internet
    Click Web Element    ${MnuTabSpecialInternet}
    Web Capture Screen At Verify Point    TabSpecialInternet

Select Tab Entertainment
    Click Web Element    ${MnuTabEntertainment}
    Web Capture Screen At Verify Point    TabEntertainment

Register Package
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Click Web Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}    #สมัครแพ็คเกจ
    Verify Package    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    VerifyPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Select Confirm Package

Verify Package
    [Arguments]    ${Size}    ${Price}    ${AmountDay}
    Scroll Web To Element    ${lblPackDate}
    Web Element Text Should Be    ${lblInternet}    ${txtInternet}
    Web Element Text Should Be    ${lblInternetSize}    ${Internet${Size}}
    Web Element Text Should Be    ${lblPackPrice}    ${Price${Price}}
    Web Element Text Should Be    ${lblPackDate}    ${Amount${AmountDay}}

Select Confirm Package
    Click Web Element    ${btnConfirm}    #กด "ยืนยัน"

Login Calendar Ontop
    [Arguments]    ${Number}
    ${status}=    Run Keyword And Return Status    Verify Error Ontop Package-recommend
    Run Keyword If    '${status}'=='True'    Log To Console    Error Ontop Package-recommend
    Choose Language On Register Page    ${ar_LANG}
    Web Element Text Should Be    ${lblLogin}    ${Login}
    Web Element Text Should Be    ${lblMobileNumber}    ${MobileNumber}
    Input Mobile Number    ${Number}
    Select Request Password

Input Mobile Number
    [Arguments]    ${Number}
    Input Web Text    ${txtInputMobileNo}    ${Number}
    Web Capture Screen At Verify Point    InputMobileNumber

Select Request Password
    Click Web Element    ${btnRequestPassword}

Verify Result Message
    Run Keyword If    "${ar_NType}"=="3CO"    Verify iPay
    Run Keyword If    "${ar_NType}"!="3CO"    Verify Result Message Success Error

Verify Result Message Success Error
    Web Element Should Be Visible    ${lblMessageYourRequestHasBeenSubmitted}
    ${text}    get web text    ${lblMessageYourRequestHasBeenSubmitted}
    ${CheckMessage}    Run Keyword And Return Status    Should Be Equal    ${text}    ${MessageYourRequestHasBeenSubmittedTH}
    ${CheckMessage2}    Run Keyword And Return Status    Should Be Equal    ${text}    ${MessageYourRequestHasBeenSubmittedEN}   
    ${CheckMessage3}    Run Keyword And Return Status    Should Be Equal    ${text}    ${MessageRegisterSuccessTH}   
    ${CheckMessage4}    Run Keyword And Return Status    Should Be Equal    ${text}    ${MessageRegisterSuccessEN}
    ${CheckMessage5}    Run Keyword And Return Status    Should Be Equal    ${text}    ${MessageYourRequestHasBeenSubmittedNetGiftTH}
    ${CheckMessage6}    Run Keyword And Return Status    Should Be Equal    ${text}    ${MessageYourRequestHasBeenSubmittedNetGiftEN}
    ${CheckMessage7}    Run Keyword And Return Status    Should Match Regexp    ${text}    ${MessageRegisterEntertainmentTH}
    Run Keyword If    (${CheckMessage} or ${CheckMessage2} or ${CheckMessage3} or ${CheckMessage4} or ${CheckMessage5} or ${CheckMessage6} or ${CheckMessage7})==True    Web Capture Screen At Verify Point    Result Message    ELSE    fail    Your Request Has Been Error

Verify iPay
    ${url}=    Get Location
    Should Match Regexp    ${url}    .*psipay.bangkokbank.com/b2c/eng/payment/payForm2.jsp
    Web Capture Screen At Verify Point    Result iPay

Verify Error Ontop Package-recommend
    ${url}=    Get Location
    Should Match Regexp    ${url}    .*ais.co.th/on-toppackage-recommend/

Check Ontop Package-recommend
    ${status}=    Run Keyword And Return Status    Verify Error Ontop Package-recommend
    Run Keyword If    '${status}'=='True'    fail    Error Ontop Package-recommend

Keywords For Teardown
    [Arguments]    ${#selenium_hub}
    Run Keyword If Test Failed    Capture Screen with Specific name  
    Run Keyword And Ignore Error    Close Browser
    Run Keyword And Ignore Error    Release Virtual Local Configurations    ${lo_OnlineTracking_Test_local_config_file_path}    ${#selenium_hub}
