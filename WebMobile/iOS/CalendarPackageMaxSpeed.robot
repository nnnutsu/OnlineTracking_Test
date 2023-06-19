*** Settings ***
Resource          Resource/PageKeywords/CalendarPackageMaxSpeed.robot

*** Test Cases ***
(F1_WEB_1-6_1,2_Y_2_1) Package : Internet 100 MB 9 Baht 1 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 100 MB 9 บาท 1วัน "
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 100 MB 9 บาท 1วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_2) Package : Internet 100 MB 9 Baht 1 Day OnSpot
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 100 MB 9 บาท 1วัน "
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 100 MB 9 บาท 1วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Corp
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_3) Package : Internet 200 MB 15 Baht 1 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 200 MB 15 บาท 1วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 200 MB 15 บาท 1วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    200MB    15Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_4) Package : Internet 600 MB 20 Baht 1 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 600 MB 20 บาท 1วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 600 MB 20 บาท 1วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    600MB    20Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_5) Package : Internet 1 GB 35 Baht 1 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 1 GB 35 บาท 1วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 1 GB 35 บาท 1วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    1GB    35Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_6) Package : Internet 1 GB 65 Baht 3 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 1 GB 65 บาท 3วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 1 GB 65 บาท 3วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    1GB    65Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_7) Package : Internet 1 GB 99 Baht 7 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 1 GB 99 บาท 7วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 1 GB 99 บาท 7วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    1GB    99Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_8) Package : Internet 1 GB 199 Baht 30 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 1 GB 199 บาท 30 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 1 GB 199 บาท 30 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    1GB    199Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_9) Package : Internet 1.5 GB 39 Baht 1 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 1.5 GB 39 บาท 1 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 1.5 GB 39 บาท 1 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    1.5GB    39Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_10) Package : Internet 1.5 GB 69 Baht 3 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 1.5 GB 69 บาท 3 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 1.5 GB 69 บาท 3 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    1.5GB    69Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_11) Package : Internet 1.5 GB 109 Baht 7 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 1.5 GB 109 บาท 7 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 1.5 GB 109 บาท 7 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    1.5GB    109Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_12) Package : Internet 1.5 GB 229 Baht 30 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 1.5 GB 229 บาท 30 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 1.5 GB 229 บาท 30 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    1.5GB    229Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_13) Package : Internet 2 GB 45 Baht 1 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 2 GB 45 บาท 1 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 2 GB 45 บาท 1 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    2GB    45Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_14) Package : Internet 2 GB 75 Baht 3 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 2 GB 75 บาท 3 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 2 GB 75 บาท 3 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    2GB    75Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_15) Package : Internet 2 GB 115 Baht 7 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 2 GB 115 บาท 7 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 2 GB 115 บาท 7 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    2GB    115Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_16) Package : Internet 2 GB 239 Baht 30 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 2 GB 239 บาท 30 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 2 GB 239 บาท 30 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    2GB    239Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_17) Package : Internet 3 GB 49 Baht 1 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 3 GB 49 บาท 1 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 3 GB 49 บาท 1 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    3GB    49Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_18) Package : Internet 3 GB 79 Baht 3 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 3 GB 79 บาท 3 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 3 GB 79 บาท 3 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    3GB    79Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_19) Package : Internet 3 GB 119 Baht 7 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 3 GB 119 บาท 7 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 3 GB 119 บาท 7 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    3GB    119Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_20) Package : Internet 3 GB 399 Baht 30 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 3 GB 399 บาท 30 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 3 GB 399 บาท 30 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    3GB    399Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_21) Package : Internet 4 GB 69 Baht 1 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 4 GB 69 บาท 1 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 4 GB 69 บาท 1 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    4GB    69Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_22) Package : Internet 4 GB 99 Baht 3 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 4 GB 99 บาท 3 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 4 GB 99 บาท 3 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    4GB    99Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_23) Package : Internet 4 GB 135 Baht 7 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 4 GB 135 บาท 7 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 4 GB 135 บาท 7 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    4GB    135Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_24) Package : Internet 4 GB 450 Baht 30 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 4 GB 450 บาท 30 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 4 GB 450 บาท 30 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    4GB    450Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_25) Package : Internet 5 GB 75 Baht 1 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 5 GB 75 บาท 1 วัน"
    ...    6. กด "ถัดไป"
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
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 5 GB 75 บาท 1 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    5GB    75Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_26) Package : Internet 5 GB 105 Baht 3 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 5 GB 105 บาท 3 วัน"
    ...    6. กด "ถัดไป"
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
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 5 GB 105 บาท 3 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ \ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    5GB    105Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_27) Package : Internet 5 GB 150 Baht 7 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 5 GB 150 บาท 7 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 5 GB 150 บาท 7 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    5GB    150Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_28) Package : Internet 5 GB 488 Baht 30 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 5 GB 488 บาท 30 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 5 GB 488 บาท 30 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package    5GB    488Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_29) Package : Internet 8 GB 89 Baht 1 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 8 GB 89 บาท 1 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 8 GB 89 บาท 1 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package 8GB    8GB    89Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_30) Package : Internet 8 GB 149 Baht 3 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 8 GB 149 บาท 3 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 8 GB 149 บาท 3 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package 8GB    8GB    149Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_31) Package : Internet 8 GB 199 Baht 7 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 8 GB 199 บาท 7 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 8 GB 199 บาท 7 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package 8GB    8GB    199Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_1-6_1,2_Y_2_32) Package : Internet 8 GB 599 Baht 30 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    '1. เปิด browser
    ...    2. ลบ แคสต์
    ...    3. เข้า Link : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "อินเตอร์เน็ตเต็มสปีด"
    ...    5. สมัครแพ็คเกจ "อินเทอร์เน็ต 8 GB 599 บาท 30 วัน"
    ...    6. กด "ถัดไป"
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
    ...    17. Verify Page (3)
    ...    18. Capture screen
    ...    19. Verify SMS (4)
    ...    20. Capture Screen
    ...
    ...    ***Expected Result***
    ...    " (1) Verify Package
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตเต็มสปีด "อินเทอร์เน็ต 8 GB 599 บาท 30 วัน"
    ...
    ...    (2) Verify Page
    ...    แสดงข้อความ "ล็อคอิน" , "หมายเลขโทรศัพท์"
    ...
    ...    (3) Verify Page
    ...    แสดงข้อความ "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"
    ...
    ...    (4) Verify SMS
    ...    แสดงข้อความ "***"
    ...
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package 8GB    8GB    599Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
