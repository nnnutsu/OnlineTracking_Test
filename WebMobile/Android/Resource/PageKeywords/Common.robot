*** Settings ***
Resource          ../../../../../../AisRobotBuffet/Common/Keywords/RedefineKeywords.txt
Resource          ../../../../../../AisRobotBuffet/Common/Keywords/ParallelLocalConfigKeyWord.txt
Resource          ../../../../../../AisRobotBuffet/Common/Keywords/RunOnFailKeyword.txt
Resource          ../../../../../../AisRobotBuffet/Web/Generic/Keywords/WebGenericKeyword.txt
Resource          ../../../../../../AisRobotBuffet/Mobile/Andriod/Keywords/SmsMoodKeywords.txt
Resource          ../../../../../../Config/LocalConfig.txt
Resource          ../PageVariable/OnlineTrackingVariable.robot
Resource          ../PageRepository/CommonRepository.robot
Resource          ../Localized/${ar_LANG}/CommonLocalized.robot


*** Keywords ***
Open WebMobile Online Tracking 
    [Arguments]    ${SN}    ${IPChrome}
    ${options}=    Create Dictionary    androidPackage=com.android.chrome    androidDeviceSerial=${SN}
    ${caps}=    Create Dictionary    chromeOptions=${options}    noReset=false
    Create Webdriver    Remote    command_executor=http://${IPChrome}    desired_capabilities=${caps}
    Go To    ${url_OnlineTracking}
    Sleep    5s
    Choose Language

Choose Language
    Run Keyword If    "${ar_LANG}"=="TH"    Click Web Element    ${btnHomeLanguageTH}
    Run Keyword If    "${ar_LANG}"=="EN"    Click Web Element    ${btnHomeLanguageEN}
    Sleep  2s

Select Tab
    [Arguments]    ${TabMenuPackage}
    Click Web Element    ${tab${TabMenuPackage}}
    Web Capture Screen At Verify Point    tab${TabMenuPackage}

Confirm Package
    Click Web Element    ${btnConfirmPackage}   

Verify Submitted Request Via Wifi or Data
    [Arguments]    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Run Keyword If    "${ar_Network}"=="Wifi"    Login Ontop Package    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Run Keyword If    "${ar_Network}"=="Wifi" and "${ar_NType}"=="3CO"     Login Ontop Package Corp   ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Run Keyword If    "${ar_Network}"=="Data"    Verify Submitted Request
    Run Keyword If    "${ar_Network}"=="Data" and "${ar_NType}"=="3CO"    Verify ipay

Login Ontop Package
    [Arguments]    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Change Language Login Ontop
    Input Number    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Submitted Request

Login Ontop Package Corp
    [Arguments]    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Change Language Login Ontop
    Input Number    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify ipay
    
Verify ipay    
    Web Capture Screen At Verify Point    ipay

Change Language Login Ontop
    ${txt}=    Get web Text    ${lblWordingLogin}
    Run Keyword If    ("${ar_LANG}"=="TH" and "${txt}" == "Login")    Click Web Element    ${btnLoginOntopLanguageTH}
    Run Keyword If    ("${ar_LANG}"=="EN" and "${txt}" == "ล็อกอิน")    Click Web Element    ${btnLoginOntopLanguageEN}
       
Input Number 
    [Arguments]    ${Number}
    Input Web Text    ${txtMobileNumber}    ${Number}
    Click Web Element    ${btnRequesOtp}
    Sleep    5s

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
    Input Web Text    ${txtGetOtp}    ${OTP}
    Web Capture Screen At Verify Point    Input OTP
    Click Web Element    ${btnConfirmOtp} 

Verify Submitted Request
    Sleep    3s
    Web Element Should Be Visible    ${lblSubmittedRequest}
    ${txtGetSubmittedRequest}=    Get web Text    ${lblSubmittedRequest}
    ${Status1} =   Run Keyword And Return Status   Should Match Regexp    ${txtGetSubmittedRequest}    ${txtSubmittedRequestTH}
    ${Status2} =   Run Keyword And Return Status   Should Match Regexp    ${txtGetSubmittedRequest}    ${txtSubmittedRequestEN}
    ${Status3} =   Run Keyword And Return Status   Should Match Regexp    ${txtGetSubmittedRequest}    ${txtSubmittedRequestNetGiftTH}
    ${Status4} =   Run Keyword And Return Status   Should Match Regexp    ${txtGetSubmittedRequest}    ${txtSubmittedRequestNetGiftEN}
    ${Status5} =   Run Keyword And Return Status   Should Match Regexp    ${txtGetSubmittedRequest}    ${txtSubmitSuccessTH}
    ${Status6} =   Run Keyword And Return Status   Should Match Regexp    ${txtGetSubmittedRequest}    ${txtSubmitSuccessEN}
    ${Status7} =   Run Keyword And Return Status   Should Match Regexp    ${txtGetSubmittedRequest}    ${txSubmitRequestEntertainmentTH}
    Run Keyword If    (${Status1} or ${Status2} or ${Status3} or ${Status4} or ${Status5} or ${Status6} or ${Status7})==True    Web Capture Screen At Verify Point    Result Message    ELSE    fail    Your Request Has Been Error

Keywords For Teardown WebMobile
    [Arguments]    ${#dict_device_name}
    Run Keyword If Test Failed    Capture Screen with Specific name
    Run Keyword And Ignore Error    Close All Browsers
    Release Virtual Local Configurations    ${lo_OnlineTracking_Test_local_config_file_path}    ${#dict_device_name}
