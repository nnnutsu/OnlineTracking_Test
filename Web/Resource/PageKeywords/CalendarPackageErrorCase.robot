*** Settings ***
Resource          OnlineTrackingCommon.robot
Resource          ../PageRepository/CalendarPackageErrorCaseRepository.robot
Resource          ../Localized/${ar_LANG}/CalendarPackageErrorCaseLocalized.robot

*** Keywords ***
Input Wrong Friend Mobile Number
    [Arguments]    ${Condition}
    Input Web Text    ${txtInputFriendMobileNo}    ${FriendNumber${Condition}}

Verify Wrong Friend Mobile Number
    Web Element Text Should Be    ${lblError}    ${PleaseInputCorrectNumber}
    Web Capture Screen At Verify Point    VerifyErrorWording

Input Wrong Mobile Number
    [Arguments]    ${Condition}
    Choose Language On Register Page    ${ar_LANG}
    Input Web Text    ${txtInputMobileNo}    ${${Condition}}
    Web Capture Screen At Verify Point    InputNumber${Condition}

Verify Wrong Mobile Number
    [Arguments]    ${Condition}
    Web Element Text Should Be    ${lblLoginNumberError}    ${${Condition}}
    Web Capture Screen At Verify Point    VerifyError${Condition}

Input Wrong OTP
    [Arguments]    ${Condition}
    Input Web Text    ${txtInputOTP}    ${${Condition}}

Select Login
    Click Web Element    ${btnOK}

Verify Wrong OTP
    Web Element Text Should Be    ${lblLoginNumberError}    ${ErrorWrongOTP}
    Web Capture Screen At Verify Point    VerifyErrorWrongOTP

Input Wrong Otp 3 Times
    Sleep   10s
    Web Element Should Be Visible    ${txtInputOTP}  
	FOR    ${index}    IN RANGE    4
        ${index}=  Set Variable    ${index+1}
        Sleep   10s
		Input Web Text    ${txtInputOTP}    1234
        Select Login
        Selenium2Library.Clear Element Text    ${txtInputOTP}
	END

Verify Error Wrong Otp 3 Times
    Web Element Text Should Be    ${lblLoginNumberError}    ${ErrorOTP3times}  
    Web Capture Screen At Verify Point    ErrorWrongOtp3Times

Verify Login Button Disabled
    Web Element Should Be Disabled    ${btnOK}
    Web Capture Screen At Verify Point    LoginButtonDisabled

Verify Friend Mobile Number 10Digits
    Web Element Should Be Visible    ${txtInoutFriendNumberMaxlength}

Verify Result Message Error Not AIS Network   
    Web Element Should Be Visible    ${lblMessageYourRequestHasBeenSubmitted}
    ${text}    get web text    ${lblMessageYourRequestHasBeenSubmitted}
    Should Be Equal    ${text}    ${SorryPleaseTryLater}
    Web Capture Screen At Verify Point    Your Request Has Been Error Not AIS Network
