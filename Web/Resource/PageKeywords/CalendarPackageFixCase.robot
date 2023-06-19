*** Settings ***
Library         Selenium2Library
Resource        OnlineTrackingCommon.robot
Resource        CalendarPackageMaxSpeed.robot
Resource        CalendarPackageSpecialInternet.robot
Resource        CalendarPackageEntertainment.robot
Resource        ../Localized/${ar_LANG}/CalendarPackageFixCaseLocalized.robot
Resource        ../PageRepository/CalendarPackageFixCaseRepository.robot

*** Keywords ***
Select Tab Menu
    [Arguments]    ${TabMenuPackage}
    Click Web Element    ${tabMenu${TabMenuPackage}}

# ตรวจสอบ Wording Tab Menu
Verify Wording Tab Menu
    [Arguments]    ${NameTab} 
    Run Keyword If    "${NameTab}"=="InternetPackagesToFriend"    Scroll Web To Element  ${tab${NameTab}}  
    Web Element Text Should Be    ${tab${NameTab}}    ${txtTab${NameTab}}
    Web Capture Screen At Verify Point    Verify Wording Tab Menu ${NameTab}

# ตรวจสอบ Wording ใต้ตาราง 
# Start { 
Verified Wording Under Table Max Speed Internet Up X3
    Web Element Text Should Be    ${lblWordingUnderTable_MaxSpeedInternetUpX3}    ${txtWordingUnderTable_MaxSpeedInternetUpX3}
    Web Capture Screen At Verify Point    Verified Wording Under Table Max Speed Internet Up X3

Verified Wording Under Table Max Speed Internet Down X3
    Wait Web Until Page Does Not Visible Element    ${lblWordingUnderTable_MaxSpeedInternetUpX3}
    Web Capture Screen At Verify Point    Verified Wording Under Table Max Speed Internet Down X3

Verify Wording Under Table Up Speed Internet
    Scroll Web To Element    ${lblWordingUnderTable_UpSpeedInternet}
    Web Element Text Should Be    ${lblWordingUnderTable_UpSpeedInternet}    ${txtWordingUnderTable_UpSpeedInternet}
    Web Capture Screen At Verify Point    Verify Wording Under Table Up Speed Internet
# } END 

# ตรวจสอบ Wording ปริมาณเน็ต ที่หัวข้อตาราง
# Start {
Verified Wording Volume Max Speed Internet Down X3
    Web Element Text Should Be    ${lblVolumnInternet_MaxSpeedInternet}    ${txtVolumnInternet} 
    Web Element Text Should Be    ${lblVolumn100MB_MaxSpeedInternetDownX3}    ${txtVolumn100MB_MaxSpeedInternetDownX3} 
    Web Element Text Should Be    ${lblVolumn200MB_MaxSpeedInternetDownX3}    ${txtVolumn200MB_MaxSpeedInternetDownX3} 
    Web Element Text Should Be    ${lblVolumn600MB_MaxSpeedInternetDownX3}    ${txtVolumn600MB_MaxSpeedInternetDownX3}  
    Web Element Text Should Be    ${lblVolumn1GB_MaxSpeedInternetDownX3}      ${txtVolumn1GB_MaxSpeedInternetDownX3}  
    Web Element Text Should Be    ${lblVolumn1.5GB_MaxSpeedInternetDownX3}    ${txtVolumn1.5GB_MaxSpeedInternetDownX3}    
    Web Element Text Should Be    ${lblVolumn2GB_MaxSpeedInternetDownX3}      ${txtVolumn2GB_MaxSpeedInternetDownX3}    
    Web Element Text Should Be    ${lblVolumn3GB_MaxSpeedInternetDownX3}      ${txtVolumn3GB_MaxSpeedInternetDownX3}   
    Web Element Text Should Be    ${lblVolumn4GB_MaxSpeedInternetDownX3}      ${txtVolumn4GB_MaxSpeedInternetDownX3}    
    Web Element Text Should Be    ${lblVolumn5GB_MaxSpeedInternetDownX3}      ${txtVolumn5GB_MaxSpeedInternetDownX3}
    Web Element Text Should Be    ${lblVolumn8GB_MaxSpeedInternetDownX3}      ${txtVolumn8GB_MaxSpeedInternetDownX3} 
    Web Capture Screen At Verify Point    Verified Wording Volume Internet Max Speed Internet Down X3

Verified Wording Volume Max Speed Internet Up X3
    Web Element Text Should Be    ${lblVolumn100MB_MaxSpeedInternetUpX3}    ${txtVolumn100MB_MaxSpeedInternetUpX3} 
    Web Element Text Should Be    ${lblVolumn200MB_MaxSpeedInternetUpX3}    ${txtVolumn200MB_MaxSpeedInternetUpX3}
    Web Element Text Should Be    ${lblVolumn600MB_MaxSpeedInternetUpX3}    ${txtVolumn600MB_MaxSpeedInternetUpX3}
    Web Element Text Should Be    ${lblVolumn1GB_MaxSpeedInternetUpX3}      ${txtVolumn1GB_MaxSpeedInternetUpX3}
    Web Element Text Should Be    ${lblVolumn1.5GB_MaxSpeedInternetUpX3}    ${txtVolumn1.5GB_MaxSpeedInternetUpX3}
    Web Element Text Should Be    ${lblVolumn2GB_MaxSpeedInternetUpX3}      ${txtVolumn2GB_MaxSpeedInternetUpX3}
    Web Element Text Should Be    ${lblVolumn3GB_MaxSpeedInternetUpX3}      ${txtVolumn3GB_MaxSpeedInternetUpX3}
    Web Element Text Should Be    ${lblVolumn4GB_MaxSpeedInternetUpX3}      ${txtVolumn4GB_MaxSpeedInternetUpX3}
    Web Element Text Should Be    ${lblVolumn8GB_MaxSpeedInternetUpX3}      ${txtVolumn8GB_MaxSpeedInternetUpX3}
    Web Element Text Should Be    ${lblVolumn15GB_MaxSpeedInternetUpX3}     ${txtVolumn15GB_MaxSpeedInternetUpX3}
    Web Capture Screen At Verify Point    Verified Wording Volume Internet Max Speed Internet Up X3

Verified Wording Volume Internet Non-Stop
    Web Element Text Should Be    ${lblSpeed_InternetNonStop}               ${txtSpeed_InternetNonStop}
    Web Element Text Should Be    ${lblSpeed512kbps_InternetNonStop}        ${txtSpeed512kbps_InternetNonStop}
    Web Element Text Should Be    ${lblSpeed1Mbps_InternetNonStop}          ${txtSpeed1Mbps_InternetNonStop}
    Web Element Text Should Be    ${lblSpeed4Mbps_InternetNonStop}          ${txtSpeed4Mbps_InternetNonStop}
    Web Element Text Should Be    ${lblSpeed6Mbps_InternetNonStop}          ${txtSpeed6Mbps_InternetNonStop}
    Web Element Text Should Be    ${lblSpeed10Mbps_InternetNonStop}         ${txtSpeed10Mbps_InternetNonStop}
    Web Capture Screen At Verify Point    Verified Wording Volume Internet Internet Non-Stop

Verified Wording Volume Up Speed Internet 7 Days
    Web Element Text Should Be    ${lblVolumn7Days_UpSpeedInternet}    ${txtVolumnInternet} 
    Web Element Text Should Be    ${lblVolumn1GB_UpSpeedInternet}    ${txtVolumn1GB_UpSpeedInternet} 
    Web Element Text Should Be    ${lblVolumn2GB_UpSpeedInternet}    ${txtVolumn2GB_UpSpeedInternet}
    Web Element Text Should Be    ${lblVolumn3GB_UpSpeedInternet}    ${txtVolumn3GB_UpSpeedInternet}
    Web Element Text Should Be    ${lblVolumn4GB_UpSpeedInternet}    ${txtVolumn4GB_UpSpeedInternet}
    Web Element Text Should Be    ${lblVolumn5GB_UpSpeedInternet}    ${txtVolumn5GB_UpSpeedInternet}
    Web Capture Screen At Verify Point    Verified Wording Volume Internet Up Speed Internet 7 Days

Verified Wording Volume Up Speed Internet 15 Days
    Web Element Text Should Be    ${lblVolumn15Days_UpSpeedInternet}    ${txtVolumnInternet} 
    Web Element Text Should Be    ${lblVolumn6GB_UpSpeedInternet}    ${txtVolumn6GB_UpSpeedInternet} 
    Web Element Text Should Be    ${lblVolumn7GB_UpSpeedInternet}    ${txtVolumn7GB_UpSpeedInternet}
    Web Element Text Should Be    ${lblVolumn8GB_UpSpeedInternet}    ${txtVolumn8GB_UpSpeedInternet}
    Web Element Text Should Be    ${lblVolumn9GB_UpSpeedInternet}    ${txtVolumn9GB_UpSpeedInternet}
    Web Element Text Should Be    ${lblVolumn10GB_UpSpeedInternet}    ${txtVolumn10GB_UpSpeedInternet}
    Web Capture Screen At Verify Point    Verified Wording Volume Internet Up Speed Internet 15 Days

Verified Wording Volume Internet Packages To Friend
    Scroll Web To Element    ${eleInternetPackageToFriend}
    Web Element Text Should Be    ${lblVolumn_InternetPackageToFriend}    ${txtVolumn_InternetPackageToFriend}
    Web Element Text Should Be    ${lblVolumn1Mbps_InternetPackageToFriend}    ${txtVolumn1Mbps_InternetPackageToFriend}
    Web Element Text Should Be    ${lblVolumn4Mbps_InternetPackageToFriend}    ${txtVolumn4Mbps_InternetPackageToFriend}
    Web Element Text Should Be    ${lblVolumn6Mbps_InternetPackageToFriend}    ${txtVolumn6Mbps_InternetPackageToFriend}
    Web Element Text Should Be    ${lblVolumn5GB_InternetPackageToFriend}      ${txtVolumn5GB_InternetPackageToFriend}
    Web Capture Screen At Verify Point    Verified Wording Volume Internet Packages To Friend
# } End


# ตรวจสอบ Wording ปริมาณวัน ที่หัวข้อตาราง
# Start {
Verified Wording Days Max Speed Internet
    Web Element Text Should Be    ${lblAmountDaysMaxSpeedInternet}    ${txtAmountDaysInternet}
    Web Element Text Should Be    ${lbl1Day_MaxSpeedInternet}    ${txtAmount_1Day}
    Web Element Text Should Be    ${lbl3Days_MaxSpeedInternet}    ${txtAmount_3Days}
    Web Element Text Should Be    ${lbl7Days_MaxSpeedInternet}    ${txtAmount_7Days}
    Web Element Text Should Be    ${lbl30Days_MaxSpeedInternet}    ${txtAmount_30Days}    
    Web Capture Screen At Verify Point    Verified Wording Days Internet Max Speed Internet

Verified Wording Days Internet Non-Stop
    Web Element Text Should Be    ${lblAmountDayInternetNonStop}    ${txtAmountDaysInternet}
    Web Element Text Should Be    ${lbl1Day_InternetNonStop}    ${txtAmount_1Day}
    Web Element Text Should Be    ${lbl7Days_InternetNonStop}    ${txtAmount_7Days}
    Web Element Text Should Be    ${lbl30Days_InternetNonStop}    ${txtAmount_30Days}
    Web Capture Screen At Verify Point    Verified Wording Volume Internet Non-Stop

Verified Wording 7 Days Up Speed Internet 
    Web Element Text Should Be    ${lblAmount7DaysUpSpeedInternet}    ${txtAmountDaysInternet}
    Web Element Text Should Be    ${lbl7Days_UpSpeedInternet}    ${txtAmount_7Days}
    Web Capture Screen At Verify Point    Verified Wording Up Speed Internet 7 Days

Verified Wording 15 Days Up Speed Internet 
    Web Element Text Should Be    ${lblAmount15DaysUpSpeedInternet}    ${txtAmountDaysInternet}
    Web Element Text Should Be    ${lbl15Days_UpSpeedInternet}    ${txtAmount_15Days}
    Web Capture Screen At Verify Point    Verified Wording Up Speed Internet 15 Days

Verified Wording Days Internet Packages To Friend
    Web Element Text Should Be    ${lblAmountDayInternetPackageToFriend}    ${txtAmountDaysInternet}
    Web Element Text Should Be    ${lbl1Day_InternetPackageToFriend}    ${txtAmount_1Day}
    Web Element Text Should Be    ${lbl7Days_InternetPackageToFriend}    ${txtAmount_7Days}
    Web Element Text Should Be    ${lbl30Days_InternetPackageToFriend}    ${txtAmount_30Days}
    Web Capture Screen At Verify Point    Verified Wording Days Internet Packages To Friend
# } End

# ตรวจสอบปุ่ม "ย้อนกลับ" / "ยกเลิก"
# Start {
Verified Button Package Max Speed Internet
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Click Web Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Verify Package    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    VerifyPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Click Web Element    ${btnBackPackage}
    Web Element Should Be Visible    ${tabMaxSpeedInternet}
    Web Capture Screen At Verify Point    Verified Button Package Max Speed Internet

Verified Button Package Internet Non Stop
    [Arguments]    ${SizeOfPackage}    ${SpeedOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Click Web Element    ${lblInternet${SpeedOfPackage}${PriceOfPackage}${AmountDayOfPackage}}
    Verify On-Top Internet Non-Stop Package    ${SizeOfPackage}    ${SpeedOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    PackageInternet${SpeedOfPackage}${PriceOfPackage}${SpeedOfPackage}${AmountDayOfPackage}
    Click Web Element    ${btnBackPackage}
    Web Element Should Be Visible    ${tabInternetNonStop}
    Web Capture Screen At Verify Point    Verified Button Package Internet Non Stop

Verified Button Package Up Speed Internet
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Click Web Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}}    #สมัครแพ็คเกจ
    Verify Package    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    VerifyPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Click Web Element    ${btnBackPackage}
    Web Element Should Be Visible    ${tabUpSpeedInternet}
    Web Capture Screen At Verify Point    Verified Button Package Up Speed Internet

Verified Button Package Internet Packages To Friend
    [Arguments]    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Scroll Web To Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}SendToFriend}
    Click Web Element    ${lblInternet${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}SendToFriend}
    Verify Package NetGift Internet    ${SizeOfPackage}    ${PriceOfPackage}    ${AmountDayOfPackage}
    Web Capture Screen At Verify Point    VerifyFriendPackage${SizeOfPackage}${PriceOfPackage}${AmountDayOfPackage}
    Click Web Element    ${btnCancelPackage}
    Web Element Should Be Visible    ${tabInternetPackagesToFriend}
    Web Capture Screen At Verify Point    Verified Button Package Up Speed Internet

Verified Button Package Entertainment VIU
    [Arguments]    ${PackageName}    ${Cost}    ${AmountDay}
    Click Web Element    ${btnViuPackage}
    Scroll Web To Element    ${imgConfirm${PackageName}${AmountDay}Package}
    Web Element Should Be Visible    ${imgConfirm${PackageName}${AmountDay}Package}
    Web Element Text Should Be    ${lblEntertainmentPackPrice}    ${Price${Cost}}
    Web Element Text Should Be    ${lblEntertainmentPackDate}    ${Amount${AmountDay}}
    Run Keyword If    '${PackageName}${AmountDay}'!='Karaoke30Days'    Web Element Text Should Be    ${lblUnderPackageFree${PackageName}${AmountDay}}    ${UnderPackageFree${PackageName}${AmountDay}}
    Web Capture Screen At Verify Point    Verify${PackageName}Package
    Click Web Element    ${btnBackPackage}
    Web Element Should Be Visible    ${tabEntertainmentPackages}
    Web Capture Screen At Verify Point    Verified Button Package Up Speed Internet
# } End