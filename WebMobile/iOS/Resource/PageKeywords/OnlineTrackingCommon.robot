*** Settings ***
Resource          ../../../../../../AisRobotBuffet/Common/Keywords/RedefineKeywords.txt
Resource          ../../../../../../AisRobotBuffet/Common/Keywords/ParallelLocalConfigKeyWord.txt
Resource          ../../../../../../AisRobotBuffet/Common/Keywords/RunOnFailKeyword.txt
Resource          ../../../../../../AisRobotBuffet/Web/Generic/Keywords/WebGenericKeyword.txt
Resource          ../../../../../../AisRobotBuffet/Mobile/Andriod/Keywords/SmsMoodKeywords.txt
Resource          ../../../../../../AisRobotBuffet/Mobile/Generic/Keywords/GeneralFunctionKeywords.txt
Resource          ../../../../../../AisRobotBuffet/Mobile/Generic/Keywords/SmsGenericKeywords.txt
Resource          ../../../../../../AisRobotBuffet/Mobile/Generic/Keywords/PhoneGenericKeyword.txt
Resource          ../PageVariable/OnlineTrackingCommonVariable.robot
Resource          ../PageRepository/CalendarPackageSpecialInternetRepository.robot
Resource          ../PageRepository/OnlineTrackingCommonRepository.robot
Resource          ../Localized/${ar_LANG}/OnlineTrackingCommonLocalized.robot

*** Keywords ***
Open Browser Online Tracking
    [Arguments]    ${SN}    ${IPAppium}    ${PlatfromName}    ${PlatfromVersion}    ${virtual_device_name}
    ${wdaLocalPort}    Set Variable    ${${virtual_device_name}_WDA_Local_Port}
    ${wdaLocalPort}    Convert To Number    ${wdaLocalPort}
    Open application    http://${IPAppium}/wd/hub    alias=Phone    platformName=${PlatfromName}    platformVersion=${PlatfromVersion}    deviceName=iPhone    bundleId=com.apple.mobilesafari
    ...    udid=${SN}    nativeWebTap=true    automationName=XCUITest    noReset=false    wdaLocalPort=${wdaLocalPort}    useNewWDA=true
    Check Popup Submit Form
    Check Show Page Select Tab
    #AISAppiumEx.Log Source
    AISAppiumEx.Click Element    xpath=//XCUIElementTypeButton[@name="URL"]
    #AISAppiumEx.Click Element    xpath=//*[@name="URL"]
    AISAppiumEx.Log Source
    AISAppiumEx.Input Text    ${txtInputURL}    ${url_OnlineTrackongOnTop}
    Hide Keyboard    Go
    Sleep    5s
    ${Contexts}    Get Contexts
    Choose Language    ${ar_LANG}
    Sleep    5s

Check Popup Submit Form
    ${Status}    Run Keyword And Return Status    Wait Mobile Until Element Visible    ${btnPopupCancelSubmit}    3s
    Run Keyword If    "${status}" == "True"    AISAppiumEx.Click element    ${btnPopupCancelSubmit}

Check Show Page Select Tab
    ${ShowTabPage}=    Run Keyword And Return Status    Wait Mobile Until Element Visible    ${btnAddTabSafari}    2
    Run Keyword If    "${ShowTabPage}"=="True"    Click Mobile Element    ${btnFirstTabSafari}
    Run Keyword If    "${ShowTabPage}"=="True"    Sleep    2s

Get SMS OTP From Mobile
    [Arguments]    ${IPAppium}    ${PlatfromName}    ${PlatfromVersion}    ${SN}
    Open SMS App    ${IPAppium}    ${PlatfromName}    ${PlatfromVersion}    ${SN}
    #Wait SMS    ${PlatfromName}    1    60    #AIS
    Sleep    10s
    ${sms}=    Read SMS    ${PlatfromName}    AIS    1
    ${arOTP}=    Get Regexp Matches    ${sms}[0]    \\d\\d\\d\\d
    ${OTP}=    Convert To String    ${arOTP}[0]
    #Close SMS App    ${PlatfromName}    ${SN}
    [Return]    ${OTP}

Input OTP
    [Arguments]    ${IPAppium}    ${PlatfromName}    ${PlatfromVersion}    ${SN}
    Sleep    20s
    ${OTP}=    Get SMS OTP From Mobile    ${IPAppium}    ${PlatfromName}    ${PlatfromVersion}    ${SN}
    Input Mobile Text    ${txtInputOTP}    ${OTP}
    Select Done On Keyboard
    Mobile Capture Screen At Verify Point    InputOTP
    Click Mobile Element    ${btnOK}

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
    #Run Keyword If    "${ar_LANG}"=="TH"    Click Mobile Element    ${btnLanguageTH}
    #Run Keyword If    "${ar_LANG}"=="EN"    Choose Language EN
    Run Keyword If    "${ar_LANG}"=="EN"    Click Mobile Element    ${btnLanguageEN}
    #${lblHeaderOnTopPackage}    Get Mobile Text    ${lblHeaderOnTopPackage}
    #Should Be Equal    ${lblHeaderOnTopPackage}    ${HeaderOnTopPackage}
    #Sleep    3s

Choose Language EN
    ${size}    AISAppiumEx.Get Element Size    ${btnLanguageEN}
    ${width}    Set Variable    ${size[0]}
    ${high}    Set Variable    ${size[1]}
    ${x}    Evaluate    -(${width}/3)
    ${y}    Evaluate    (${high}/3)
    AISAppiumEx.Click Element At Coordinates    ${btnLanguageEN}    ${x}    ${y}

Choose Language On Register Page
    [Arguments]    ${ar_LANG}
    #Switch To WebView
    #Run Keyword If    "${ar_LANG}"=="TH"    Choose Language TH On Register Page
    #Run Keyword If    "${ar_LANG}"=="EN"    Choose Language EN On Register Page
    Run Keyword If    "${ar_LANG}"=="EN"    Click Mobile Element    ${btnLanguageENRegister}
    #${lblLogin}    Get Mobile Text    ${lblLogin}
    #Should Be Equal    ${lblLogin}    ${Login}

Choose Language EN On Register Page
    ${size}    AISAppiumEx.Get Element Size    ${btnLanguageENRegister}
    ${width}    Set Variable    ${size[0]}
    ${high}    Set Variable    ${size[1]}
    ${x}    Evaluate    -(${width}/3)
    ${y}    Evaluate    (${high}/3)
    AISAppiumEx.Click Element At Coordinates    ${btnLanguageENRegister}    ${x}    ${y}

Choose Language TH On Register Page
    ${size}    AISAppiumEx.Get Element Size    ${btnLanguageENRegister}
    ${width}    Set Variable    ${size[0]}
    ${high}    Set Variable    ${size[1]}
    ${x}    Evaluate    -(${width}/3)
    ${y}    Evaluate    (${high}/3)
    AISAppiumEx.Click Element At Coordinates    ${btnLanguageThRegister}    ${x}    ${y}

Select Tab Max Speed Internet
    Click Mobile Element    ${MnuTabNetMaxSpeed}    #เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    Mobile Capture Screen At Verify Point    TabMaxSpeedInternet

Select Tab Special Internet
    Click Mobile Element    ${MnuTabSpecialInternet}
    Mobile Capture Screen At Verify Point    TabSpecialInternet

Select Tab Entertainment
    Click Mobile Element    ${MnuTabEntertainment}
    Mobile Capture Screen At Verify Point    TabEntertainment

Register Package
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Swipe To Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Click Mobile Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}    #สมัครแพ็คเกจ
    Verify Package    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Mobile Capture Screen At Verify Point    VerifyPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Select Confirm Package

Verify Package
    [Arguments]    ${Size}    ${Price}    ${AmountDay}
    Swipe by Percent    50    30    50    40
    ${lblInternet}    Get Mobile Text    ${lblInternet}
    Should Be Equal    ${lblInternet}    ${txtInternet}
    #${lblInternetSize}    Get Mobile Text    ${lblInternetSize}
    #Should Be Equal    ${lblInternetSize}    ${Internet${Size}}
    #${lblPackPrice}    Get Mobile Text    ${lblPackPrice}
    #AISAppiumEx.Log Source
    #${lblBaht}    AISAppiumEx.Get Text    ${lblBaht}  
    #Should Be Equal    ${lblPackPrice} ${lblBaht}   ${Price${Price}}
    #${lblPackDate}    Get Mobile Text    ${lblPackDate}
    #Should Be Equal    ${lblPackDate}    ${Amount${AmountDay}}

Select Confirm Package
    AISAppiumEx.Log Source
    #Swipe by Percent    50    70    50    40
    #Run Keyword If    "${ar_Network}"=="TH"    
    #Click Mobile Element    xpath=//XCUIElementTypeOther[23]/XCUIElementTypeStaticText[@name="ยืนยัน"]
    #Click Mobile Element    xpath=//XCUIElementTypeOther[23]/XCUIElementTypeStaticText[@name="ยืนยัน"]
    #Run Keyword If    "${ar_Network}"=="EN"    Click Mobile Element    ${btnConfirmEN} 
    AISAppiumEx.Click Element At Coordinates    273    633
    AISAppiumEx.Click Element At Coordinates    273    600

Verify Submitted Request Via Wifi or Data
    [Arguments]    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Run Keyword If    "${ar_Network}"=="Wifi"    Login Calendar Ontop    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Run Keyword If    "${ar_Network}"=="Wifi" and "${ar_NType}"=="3CO"     Login Calendar Ontop Corp   ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Run Keyword If    "${ar_Network}"=="Data"    Verify Result Message Success Error
    Run Keyword If    "${ar_Network}"=="Data" and "${ar_NType}"=="3CO"    Verify ipay

Login Calendar Ontop
    [Arguments]    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    #Switch To WebView
    Check Ontop Package-recommend
    Choose Language On Register Page    ${ar_LANG}
    #${lblMobileNumber}    Get Mobile Text    ${lblMobileNumber}
    #Should Be Equal    ${lblMobileNumber}    ${MobileNumber}
    Input Mobile Number    ${Number}
    Select Request Password
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Sleep    10s
    Verify Result Message Success Error

Login Calendar Ontop Corp
    [Arguments]    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    ${status}=    Run Keyword And Return Status    Verify Error Ontop Package-recommend
    Run Keyword If    '${status}'=='True'    Fail    Error Ontop Package-recommend
    Choose Language On Register Page    ${ar_LANG}
    ${lblLogin}    Get Mobile Text    ${lblLogin}
    Should Be Equal    ${lblLogin}    ${Login}
    ${lblMobileNumber}    Get Mobile Text    ${lblMobileNumber}
    Should Be Equal    ${lblMobileNumber}    ${MobileNumber}
    Mobile Capture Screen At Verify Point    LoginCalendarOntop
    Input Mobile Number    ${Number}
    Select Request Password
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify iPay

Input Mobile Number
    [Arguments]    ${Number}
    Input Mobile Text    ${txtInputMobileNo}    ${Number}
    Mobile Capture Screen At Verify Point    InputMobileNumber

Select Request Password
    Click Mobile Element    ${btnRequestPassword}

Verify Result Message
    Run Keyword If    "${ar_NType}"=="3CO"    Verify iPay
    Run Keyword If    "${ar_NType}"!="3CO"    Verify Result Message Success Error

Verify Result Message Success Error
    Sleep    5s
    #Wait Mobile Until Element Visible    ${lblMessageYourRequestHasBeenSubmitted}
    ${text}    Get Mobile Text    ${lblMessageYourRequestHasBeenSubmitted}
    ${CheckMessage}    Run Keyword And Return Status    Wait Mobile Until Element Visible   ${lblMessageYourRequestHasBeenSubmittedTH}
    ${CheckMessage2}    Run Keyword And Return Status    Wait Mobile Until Element Visible    ${lblMessageYourRequestHasBeenSubmittedEN}   
    ${CheckMessage3}    Run Keyword And Return Status    Wait Mobile Until Element Visible    ${lblMessageRegisterSuccessTH}   
    ${CheckMessage4}    Run Keyword And Return Status    Wait Mobile Until Element Visible    ${lblMessageRegisterSuccessEN}
    ${CheckMessage5}    Run Keyword And Return Status    Wait Mobile Until Element Visible    ${lblMessageYourRequestHasBeenSubmittedNetGiftTH}
    ${CheckMessage6}    Run Keyword And Return Status    Wait Mobile Until Element Visible    ${lblMessageYourRequestHasBeenSubmittedNetGiftEN}
    ${CheckMessage7}    Run Keyword And Return Status    Wait Mobile Until Element Visible    ${lblMessageRegisterEntertainmentTH}
    Run Keyword If    (${CheckMessage} or ${CheckMessage2} or ${CheckMessage3} or ${CheckMessage4} or ${CheckMessage5} or ${CheckMessage6} or ${CheckMessage7})==True    Mobile Capture Screen At Verify Point    Result Message    ELSE    fail    Your Request Has Been Error

Verify iPay
    Select Window    NEW
    #${Contexts}   Get Contexts
    #AISAppiumEx.Switch To Context    ${Contexts[0]}
    AISAppiumEx.Click Element    //XCUIElementTypeOther[@name="URL"]
    ${url}=    AISAppiumEx.Get Element Attribute    ${txtInputEditURL}    value
    Should Match Regexp    ${url}    https://ipay.bangkokbank.com/b2c/eng/payment/payForm2.jsp
    Mobile Capture Screen At Verify Point    Result iPay

Verify Error Ontop Package-recommend
    #${Contexts}   Get Contexts
    #AISAppiumEx.Switch To Context    ${Contexts[0]}
    #AISAppiumEx.Click Element    ${txtInputURL}
    AISAppiumEx.Click Element    //XCUIElementTypeOther[@name="URL"]
    ${url}=    AISAppiumEx.Get Element Attribute    ${txtInputEditURL}    value
    Should Match Regexp    ${url}    https://www.ais.co.th/on-toppackage-recommend/

Check Ontop Package-recommend
    ${status}=    Run Keyword And Return Status    Verify Error Ontop Package-recommend
    Run Keyword If    '${status}'=='True'    Log To Console    Error Ontop Package-recommend
    Run Keyword If    '${status}'=='False'    AISAppiumEx.Click Element    ${btnCancelEditUrl}

Close All Browser Tab
    ${Contexts}    Get Contexts
    AISAppiumEx.Switch To Context    ${Contexts[0]}
    AISAppiumEx.Click Element    ${btnCancelEditUrl}
    AISAppiumEx.Click Element    ${btnTabBrowser}
    ${CountXpath}    AISAppiumEx.Get Matching Xpath Count    //XCUIElementTypeButton[@name="closeTabButton"]
    FOR    ${INDEX}    IN RANGE    ${CountXpath}
        ${Xpath}    Evaluate    ${CountXpath}-${INDEX}
        AISAppiumEx.Click element    xpath=(//XCUIElementTypeButton[@name="closeTabButton"])[${Xpath}]
    END

Switch To WebView
    Sleep    10s
    ${Contexts}    Get Contexts
    AISAppiumEx.Switch To Context    ${Contexts[1]}

Switch To NativeApp
    ${Contexts}    Get Contexts
    AISAppiumEx.Switch To Context    ${Contexts[0]}

Select Done On Keyboard
    #Switch To NativeApp
    AISAppiumEx.Click Element    ${btnDoneOnKeyboard}
    #Switch To WebView

Keywords For Teardown
    [Arguments]    ${#selenium_hub}
    Run Keyword If Test Failed    Capture Screen with Specific name  
    #Run Keyword And Ignore Error    Close Browser
    Run Keyword And Ignore Error    Close All Browser Tab
    Run Keyword And Ignore Error    Close Application
    Run Keyword And Ignore Error    Release Virtual Local Configurations    ${lo_OnlineTracking_Test_local_config_file_path}    ${#selenium_hub}
