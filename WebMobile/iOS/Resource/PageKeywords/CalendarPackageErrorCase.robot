*** Settings ***
Resource          OnlineTrackingCommon.robot
Resource          ../PageRepository/CalendarPackageErrorCaseRepository.robot
Resource          ../Localized/${ar_LANG}/CalendarPackageErrorCaseLocalized.robot

*** Keywords ***
Input Wrong Friend Mobile Number
    [Arguments]    ${Condition}
    Input Mobile Text    ${txtInputFriendMobileNo}    ${FriendNumber${Condition}}
    Select Done On Keyboard
    #Mobile Capture Screen At Verify Point    InputFriendNumber${Condition}

Verify Wrong Friend Mobile Number
    Mobile element text should be    ${lblError}    ${PleaseInputCorrectNumber}
    Mobile Capture Screen At Verify Point    VerifyErrorWording

Input Wrong Mobile Number
    [Arguments]    ${Condition}
    Choose Language On Register Page    ${ar_LANG}
    Input Mobile Text    ${txtInputMobileNo}    ${${Condition}}
    Select Done On Keyboard
    #Mobile Capture Screen At Verify Point    InputNumber${Condition}

Verify Wrong Mobile Number
    [Arguments]    ${Condition}
    Mobile element text should be    ${lblLoginNumberError}    ${${Condition}}
    Mobile Capture Screen At Verify Point    VerifyError${Condition}

Input Wrong OTP
    [Arguments]    ${Condition}
    Input Mobile Text    ${txtInputOTP}    ${${Condition}}
    Select Done On Keyboard
    #Mobile Capture Screen At Verify Point    InputOTP${Condition}
    #Select Login

Select Login
    Click Mobile Element    ${btnOK}

Verify Wrong OTP
    Swipe by Percent    50    20    50    60
    Mobile element text should be    ${lblLoginNumberError}    ${ErrorWrongOTP}
    Mobile Capture Screen At Verify Point    VerifyErrorWrongOTP

Input Wrong Otp 3 Times
	Input Mobile Text    ${txtInputOTP}    1234
	FOR    ${index}    IN RANGE    4
        ${index}=  Set Variable    ${index+1}
        Select Login
        #AISAppiumEx.Clear Text    ${txtInputOTP}
	END

Verify Error Wrong Otp 3 Times
    Swipe by Percent    50    20    50    60
    Mobile element text should be    ${lblLoginNumberError}    ${ErrorOTP3times}  
    Mobile Capture Screen At Verify Point    ErrorWrongOtp3Times

Verify Login Button Disabled
    AISAppiumEx.Element Should Be Disabled    ${btnOK}
    Mobile Capture Screen At Verify Point    LoginButtonDisabled

Verify Friend Mobile Number 10Digits
    Mobile Capture Screen At Verify Point     Can't Input Number MoreThan 10 Digits

Verify Result Message Error Not AIS Network   
    [Arguments]    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    ${status}=    Run Keyword And Return Status    Verify Error Ontop Package-recommend
    Run Keyword If    '${status}'=='True'    Fail    Error Ontop Package-recommend
    Choose Language On Register Page    ${ar_LANG}
    Input Mobile Number    ${Number}
    Select Request Password
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    #Verify Wording Result Message Error Not AIS Network 
    Sleep     3s
    Wait Mobile Until Element Visible     ${lblSorryPleaseTryLater}    #xpath=//*[@name="ขออภัยค่ะ กรุณาสมัครผ่าน AIS Call Center 1175 ค่ะ"]  
    Mobile Capture Screen At Verify Point    Your Request Has Been Error Not AIS Network
