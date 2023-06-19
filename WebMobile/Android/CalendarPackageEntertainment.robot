*** Settings ***
Resource          Resource/PageKeywords/Common.robot
Resource          Resource/PageKeywords/CalendarPackageEntertainment.robot

*** Test Cases ***
(F5_WEB_2_1_Y_2_106) Package VIU Premium Free 7 Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้า Link : stg.m.ais.co.th/ontop-package
    ...     2. เลือก Tab "Entertainment"
    ...     3. เลือกแพ็คเกจ "viu PREMIUM Package ฟรี 1 เดือน"
    ...     4. กด "สมัครเลย"
    ...     5. Verify Package (1)
    ...     6. Capture screen
    ...     7. กด "ยืนยัน" 
    ...     8. Verify Page (2)
    ...     9. Capture Screen
    ...     10. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...     11. กด "รับรหัสผ่าน"
    ...     12. กรอก OTP
    ...     13. Capture screen
    ...     14. กด "ตกลง"
    ...     15. Verify  Page (3)
    ...     16. Capture screen
    ...     17. Verify SMS (4)
    ...     18. Capture Screen
    ...
    ...     *** Expect Result ***
    ...    Verify Package (1) แพ็กเกจเสริม เลือก Tab "Entertainment" "viu PREMIUM Package ฟรี 1 เดือน"
    ...    Verify Page (2) แสดงข้อความ  "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...    Verify Page (3) แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...    Verify SMS (4) แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    Entertainment
    # Select Package VIY Premium By Month
    Select Package VIY Premium By Day
    #Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F5_WEB_2_1_Y_2_107) Package AIS Karaoke Free 7 Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้า Link : stg.m.ais.co.th/ontop-package
    ...     2. เลือก Tab "Entertainment"
    ...     3. เลือกแพ็คเกจ "AIS Karaoke Package ฟรี 7 วัน"
    ...     4. กด "สมัครเลย"
    ...     5. Verify Package (1)
    ...     6. Capture screen
    ...     7. กด "ยืนยัน" 
    ...     8. Verify Page (2)
    ...     9. Capture Screen
    ...     10. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...     11. กด "รับรหัสผ่าน"
    ...     12. กรอก OTP
    ...     13. Capture screen
    ...     14. กด "ตกลง"
    ...     15. Verify  Page (3)
    ...     16. Capture screen
    ...     17. Verify SMS (4)
    ...     18. Capture Screen
    ...
    ...     *** Expect Result ***
    ...    Verify Package (1) แพ็กเกจเสริม เลือก Tab "Entertainment" "AIS Karaoke Package ฟรี 7 วัน"
    ...    Verify Page (2) แสดงข้อความ  "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...    Verify Page (3) แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...    Verify SMS (4) แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    Entertainment
    Select Package AIS Karaoke 7 Days
    #Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F5_WEB_2_1_Y_2_108) Package AIS Karaoke Free 30 Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้า Link : stg.m.ais.co.th/ontop-package
    ...     2. เลือก Tab "Entertainment"
    ...     3. เลือกแพ็คเกจ "AIS Karaoke Package ฟรี 30 วัน"
    ...     4. กด "สมัครเลย"
    ...     5. Verify Package (1)
    ...     6. Capture screen
    ...     7. กด "ยืนยัน" 
    ...     8. Verify Page (2)
    ...     9. Capture Screen
    ...     10. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...     11. กด "รับรหัสผ่าน"
    ...     12. กรอก OTP
    ...     13. Capture screen
    ...     14. กด "ตกลง"
    ...     15. Verify  Page (3)
    ...     16. Capture screen
    ...     17. Verify SMS (4)
    ...     18. Capture Screen
    ...
    ...     *** Expect Result ***
    ...    Verify Package (1) แพ็กเกจเสริม เลือก Tab "Entertainment" "AIS Karaoke Package ฟรี 30 วัน"
    ...    Verify Page (2) แสดงข้อความ  "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...    Verify Page (3) แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...    Verify SMS (4) แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    Entertainment
    Select Package AIS Karaoke 30 Days
    #Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}     
