*** Settings ***
Library         Selenium2Library
Resource        Common.robot   
Resource        CalendarPackageMaxSpeed.robot
Resource        CalendarPackageNetGift.robot
Resource          ../Localized/${ar_LANG}/CalendarPackageErrorCase.robot
Resource          ../PageRepository/CalendarPackageErrorCase.robot
Resource          ../PageRepository/CommonRepository.robot


*** Keywords ***
# Verified Mobile Number
# Start {
Not Input Mobile Number
    Click Web Element    ${btnRequesOtp}
    Web Element Text Should Be    ${lblErrorMobileNumber}    ${txtErrorMobileNumber}  
    Web Capture Screen At Verify Point    Verify Input Mobile Number

Verify Mobile Number
    [Arguments]    ${MobileNumber}
    Input Web Text    ${txtMobileNumber}    ${MobileNumber}
    Click Web Element    ${btnRequesOtp}
    Web Element Text Should Be    ${lblErrorMobileNumber}    ${txtErrorMobileNumber}  
    Web Capture Screen At Verify Point    Error Input Mobile Number

Verify Mobile Number Non AIS
    [Arguments]    ${MobileNumber}
    Input Web Text    ${txtMobileNumber}    ${MobileNumber}
    Click Web Element    ${btnRequesOtp}
    Web Element Text Should Be    ${lblErrorMobileNumber}    ${txtErrorMobileNumberNonAIS}
    Web Capture Screen At Verify Point    Verify Mobile Number Non AIS

Not Input OTP   
    [Arguments]    ${MobileNumber}
    Input Web Text    ${txtMobileNumber}    ${MobileNumber}
    Click Web Element    ${btnRequesOtp}
    ${Status} =   Run Keyword And Return Status    Click Web Element    ${btnConfirmOtp} 
    Run Keyword If    ${Status} == False    Web Capture Screen At Verify Point    Not Input OTP    ELSE    True    Have Been Error!!!
# } End

# Verified OTP
# Start {
Verify Mobile Number Can't Input
    [Arguments]    ${MobileNumber}
    Input Web Text    ${txtMobileNumber}    ${MobileNumber}
    Web Capture Screen At Verify Point    Verify Input Mobile Number

Verify OTP Can't Input
    [Arguments]    ${Number}    ${OTP}
    Input Number    ${Number}
    Input Web Text    ${txtGetOtp}    ${OTP}
    ${Status} =   Run Keyword And Return Status    Click Web Element    ${btnConfirmOtp} 
    Run Keyword If    ${Status} == False    Web Capture Screen At Verify Point    Verify OTP Can Not Input    ELSE    True    Have Been Error!!!

Verified Fill OTP More 4 Digit
    [Arguments]    ${Number}    ${OTP}
    Input Number    ${Number}
    Input Web Text    ${txtGetOtp}    ${txtOTPThan4}
    Web Capture Screen At Verify Point    Verified Fill OTP More 4 Digit
    
Verify Wrong OTP
    [Arguments]    ${Number}    ${OTP}
    Input Number    ${Number}
    Input Web Text    ${txtGetOtp}    ${OTP}
    Click Web Element    ${btnConfirmOtp} 
    Web Element Text Should Be    ${lblErrorOTP}    ${txtErrorOTP}  
    Web Capture Screen At Verify Point    Verify Wrong OTP

Verify Input Wrong Otp 3 Times
    [Arguments]    ${Number}    ${OTP}
    Input Web Text    ${txtMobileNumber}    ${Number}
    Click Web Element    ${btnRequesOtp}
    Sleep    5s
	FOR    ${index}    IN RANGE    4
        ${index}=  Set Variable    ${index+1}
		Input Web Text    ${txtGetOtp}    ${OTP}
        Click Web Element    ${btnConfirmOtp} 
        Sleep    5s
        Run Keyword If    ${index}==4    Check Wording Verify Input Wrong Otp 3 Times    ELSE    Selenium2Library.Clear Element Text    ${txtGetOtp} 
	END

Check Wording Verify Input Wrong Otp 3 Times
    Web Element Text Should Be    ${lblErrorOTP}    ${txtErrorOTP3times}  
    Web Capture Screen At Verify Point    Verify Input Wrong Otp 3 Times
# } End

# MobileNumber NetGift
# Start {
Not Input Friend Number   
    Confirm Package Net Gift
    Web Element Text Should Be    ${lblErrorNetGift}    ${txtErrorNetGift}  
    Web Capture Screen At Verify Point    Not Input Friend Number

Verify Friend Number
    [Arguments]    ${MobileNumber}
    Input Web Text    ${txtInputFriendNumber}    ${MobileNumber}
    Confirm Package Net Gift
    Web Element Text Should Be    ${lblErrorNetGift}    ${txtErrorNetGift}  
    Web Capture Screen At Verify Point    Verify Friend Number

Verify Friend Number Can't Input
    [Arguments]    ${MobileNumber}
    Input Web Text    ${txtInputFriendNumber}    ${MobileNumber}
    Web Capture Screen At Verify Point    Verify Friend Number Can Not Input

Verify Wording Friend Number Can't Input
    [Arguments]    ${MobileNumber} 
    Input Web Text    ${txtInputFriendNumber}    ${txtNumberByCharacter}
    Web Element Text Should Be    ${lblErrorNetGift}    ${txtErrorNetGift}  
    Web Capture Screen At Verify Point    Verify Wording Friend Number Can Not Input

Verify Friend Number Non AIS
    [Arguments]    ${MobileNumber}    ${Number}
    Input Web Text    ${txtInputFriendNumber}    ${MobileNumber}
    Web Capture Screen At Verify Point    Verify Friend Number Non AIS
    Confirm Package NetGift
    Change Language Login Ontop
    Input Number    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Sleep    3s
    Web Element Should Be Visible    ${lblSubmittedRequest}
    ${Status1} =   Run Keyword And Return Status    Web Element Text Should Be    ${lblSubmittedRequest}    ขออภัยค่ะ ไม่สามารถทำรายการได้ในขณะนี้ กรุณาใช้บริการใหม่ในภายหลังค่ะ
    ${Status2} =   Run Keyword And Return Status    Web Element Text Should Be    ${lblSubmittedRequest}    Sorry, this service is temporarily unavailable.
    ${Status3} =   Run Keyword And Return Status    Web Element Text Should Be    ${lblSubmittedRequest}    ขออภัยค่ะ กรุณาสมัครผ่าน AIS Call Center 1175 ค่ะ
    ${Status4} =   Run Keyword And Return Status    Web Element Text Should Be    ${lblSubmittedRequest}    Sorry, please apply the package via AIS Call Center 1175
    Run Keyword If    (${Status1} or ${Status2} or ${Status3 } or ${Status4})==True    Web Capture Screen At Verify Point    Verify Friend Number Non AIS    ELSE    fail    Error Friend Number Non AIS
    # แจ้งเตือนเบอร์ต่างเครือข่ายหน้า Thank You Page
    
Verify Friend Number Same Sender Number
    [Arguments]    ${FriendNumber}    ${SenderNumber}
    Input Web Text    ${txtInputFriendNumber}    ${FriendNumber}
    Confirm Package NetGift
    Change Language Login Ontop
    Input Web Text    ${txtMobileNumber}    ${SenderNumber}
    Click Web Element    ${btnRequesOtp}
    Web Capture Screen At Verify Point    Verify Friend Number Same Sender Number
    # เบอร์ผู้รับ และเบอร์ผู้ส่งสามารถเป็นเบอร์เดียวกันได้

Verify Friend Number Should Be 10 Digits
    ${text}    Get Web Text    ${txtInputFriendNumber}
    Should Match Regexp    ${text}    \\d{10}$
    Web Capture Screen At Verify Point    Fill Mobile Number More 10
# } End