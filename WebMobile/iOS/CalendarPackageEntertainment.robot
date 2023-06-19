*** Settings ***
Resource          Resource/PageKeywords/CalendarPackageEntertainment.robot

*** Test Cases ***
(F5_WEB_2_1_Y_2_106) Package : Viu PREMIUM Package Free 7 Days
    [Documentation]    ***Owner : Nut***
    ...
    ...    ***Status : Active***
    ...
    ...    ***Test Steps***
    ...    1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "Entertainment"
    ...    5. เลือกแพ็คเกจ "viu PREMIUM Package ฟรี 7 วัน"
    ...    6. กด "สมัครเลย"
    ...    7. Verify Package (1)
    ...    8. Capture screen
    ...    9. กด "ยืนยัน"
    ...    10. Verify Page (2)
    ...    11. Capture Screen
    ...    12. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...    13. กด "รับรหัสผ่าน"
    ...    14. กรอก OTP
    ...    15. Capture screen
    ...    16. กด "ตกลง"
    ...    17. Verify \ Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    Verify Package (1)
    ...    แพ็กเกจเสริม เลือก Tab "Entertainment"
    ...    "viu PREMIUM Package ฟรี 1 เดือน"
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ \ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ "***"
    [Tags]    Success    Active    3PE    3PO    3BE    3BO
    ...    IPE    FBB
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Entertainment
    Select Viu Package
    Verify Entertainment Package    Viu    Free    7Days
    #Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify Wait Register Viu Package Page
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F5_WEB_2_1_Y_2_107) Package : AIS Karaoke Package Free 7 Days
    [Documentation]    ***Owner : Nut***
    ...
    ...    ***Status : Active***
    ...
    ...    ***Test Steps***
    ...    1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "Entertainment"
    ...    5. เลือกแพ็คเกจ "AIS Karaoke Package ฟรี 7 วัน"
    ...    6. กด "สมัครเลย"
    ...    7. Verify Package (1)
    ...    8. Capture screen
    ...    9. กด "ยืนยัน"
    ...    10. Verify Page (2)
    ...    11. Capture Screen
    ...    12. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...    13. กด "รับรหัสผ่าน"
    ...    14. กรอก OTP
    ...    15. Capture screen
    ...    16. กด "ตกลง"
    ...    17. Verify \ Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    Verify Package (1)
    ...    แพ็กเกจเสริม เลือก Tab "Entertainment"
    ...    "AIS Karaoke Package ฟรี 7 วัน"
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ \ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ "***"
    [Tags]    Success    Active    3PE    3PO    3BE    3BO
    ...    IPE    FBB
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Entertainment
    Select Karaoke 7 Days Package
    Verify Entertainment Package    Karaoke    Free    7Days
    #Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify Wait Register Package Page
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F5_WEB_2_1_Y_2_108) Package : AIS Karaoke Package Free 30 Days
    [Documentation]    ***Owner : Nut***
    ...
    ...    ***Status : Active***
    ...
    ...    ***Test Steps***
    ...    1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "Entertainment"
    ...    5. เลือกแพ็คเกจ "AIS Karaoke Package ฟรี 30 วัน"
    ...    6. กด "สมัครเลย"
    ...    7. Verify Package (1)
    ...    8. Capture screen
    ...    9. กด "ยืนยัน"
    ...    10. Verify Page (2)
    ...    11. Capture Screen
    ...    12. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...    13. กด "รับรหัสผ่าน"
    ...    14. กรอก OTP
    ...    15. Capture screen
    ...    16. กด "ตกลง"
    ...    17. Verify \ Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    Verify Package (1)
    ...    แพ็กเกจเสริม เลือก Tab "Entertainment"
    ...    "AIS Karaoke Package ฟรี 30 วัน"
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ \ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ "***"
    [Tags]    Success    Active    3PO    3BO
    ...    IPE    FBB
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Entertainment
    Select Karaoke 30 Days Package
    Verify Entertainment Package    Karaoke    Free    30Days
    #Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify Wait Register Package Page
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
