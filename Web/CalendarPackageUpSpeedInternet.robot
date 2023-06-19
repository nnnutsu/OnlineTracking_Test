*** Settings ***
Resource          Resource/PageKeywords/CalendarPackageSpecialInternet.robot

*** Test Cases ***
(F2_WEB_1-6_1,2_Y_2_48) Package : Up Speed Internet 1 GB 39 Baht 7 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตอัพสปีด 1 GB 39 บาท 7 วัน""
    ...    5. กด ""ถัดไป""
    ...    6. Verify Package (1)
    ...    7. Capture screen
    ...    8. กด ""ยืนยัน""
    ...    9. Verify Page (2)
    ...    10. Capture Screen
    ...    11. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...    12. กด ""รับรหัสผ่าน""
    ...    13. กรอก OTP
    ...    14. Capture screen
    ...    15. กด ""ตกลง""
    ...    16. Verify \ Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตอัพสปีด 1 GB 39 บาท 7 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ \ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""เหมา เหมา9บ. ใช้เน็ตได้เร็วสูงสุด 100MBนาน24ชม."""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Register Package    1GB    39Baht    7Day
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}


(F2_WEB_1-6_1,2_Y_2_49) Package : Up Speed Internet 2 GB 49 Baht 7 Day
    [Documentation]    ***Owner : ***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตอัพสปีด 2 GB 49 บาท 7 วัน""
    ...    5. กด ""ถัดไป""
    ...    6. Verify Package (1)
    ...    7. Capture screen
    ...    8. กด ""ยืนยัน""
    ...    9. Verify Page (2)
    ...    10. Capture Screen
    ...    11. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...    12. กด ""รับรหัสผ่าน""
    ...    13. กรอก OTP
    ...    14. Capture screen
    ...    15. กด ""ตกลง""
    ...    16. Verify \ Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตอัพสปีด 2 GB 49 บาท 7 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ \ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Register Package    2GB    49Baht    7Day
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_50) Package : Up Speed Internet 3 GB 79 Baht 7 Day
    [Documentation]    ***Owner : ***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตอัพสปีด 3 GB 79 บาท 7 วัน""
    ...    5. กด ""ถัดไป""
    ...    6. Verify Package (1)
    ...    7. Capture screen
    ...    8. กด ""ยืนยัน""
    ...    9. Verify Page (2)
    ...    10. Capture Screen
    ...    11. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...    12. กด ""รับรหัสผ่าน""
    ...    13. กรอก OTP
    ...    14. Capture screen
    ...    15. กด ""ตกลง""
    ...    16. Verify \ Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตอัพสปีด 3 GB 79 บาท 7 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ \ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Register Package    3GB    79Baht    7Day
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_51) Package : Up Speed Internet 4 GB 89 Baht 7 Day
    [Documentation]    ***Owner : ***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตอัพสปีด 4 GB 89 บาท 7 วัน""
    ...    5. กด ""ถัดไป""
    ...    6. Verify Package (1)
    ...    7. Capture screen
    ...    8. กด ""ยืนยัน""
    ...    9. Verify Page (2)
    ...    10. Capture Screen
    ...    11. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...    12. กด ""รับรหัสผ่าน""
    ...    13. กรอก OTP
    ...    14. Capture screen
    ...    15. กด ""ตกลง""
    ...    16. Verify \ Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตอัพสปีด 4 GB 89 บาท 7 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ \ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Register Package    4GB    89Baht    7Day
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_52) Package : Up Speed Internet 5 GB 99 Baht 7 Day
    [Documentation]    ***Owner : ***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตอัพสปีด 5 GB 99 บาท 7 วัน""
    ...    5. กด ""ถัดไป""
    ...    6. Verify Package (1)
    ...    7. Capture screen
    ...    8. กด ""ยืนยัน""
    ...    9. Verify Page (2)
    ...    10. Capture Screen
    ...    11. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...    12. กด ""รับรหัสผ่าน""
    ...    13. กรอก OTP
    ...    14. Capture screen
    ...    15. กด ""ตกลง""
    ...    16. Verify \ Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตอัพสปีด 5 GB 99 บาท 7 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ \ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Register Package    5GB    99Baht    7Day
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_53) Package : Up Speed Internet 6 GB 149 Baht 15 Day
    [Documentation]    ***Owner : ***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตอัพสปีด 6 GB 149 บาท 15 วัน""
    ...    5. กด ""ถัดไป""
    ...    6. Verify Package (1)
    ...    7. Capture screen
    ...    8. กด ""ยืนยัน""
    ...    9. Verify Page (2)
    ...    10. Capture Screen
    ...    11. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...    12. กด ""รับรหัสผ่าน""
    ...    13. กรอก OTP
    ...    14. Capture screen
    ...    15. กด ""ตกลง""
    ...    16. Verify \ Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตอัพสปีด 6 GB 149 บาท 15 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ \ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Register Package    6GB    149Baht    15Day
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_54) Package : Up Speed Internet 7 GB 159 Baht 15 Day
    [Documentation]    ***Owner : ***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตอัพสปีด 7 GB 159 บาท 15 วัน""
    ...    5. กด ""ถัดไป""
    ...    6. Verify Package (1)
    ...    7. Capture screen
    ...    8. กด ""ยืนยัน""
    ...    9. Verify Page (2)
    ...    10. Capture Screen
    ...    11. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...    12. กด ""รับรหัสผ่าน""
    ...    13. กรอก OTP
    ...    14. Capture screen
    ...    15. กด ""ตกลง""
    ...    16. Verify \ Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตอัพสปีด 7 GB 159 บาท 15 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ \ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Register Package    7GB    159Baht    15Day
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_55) Package : Up Speed Internet 8 GB 179 Baht 15 Day
    [Documentation]    ***Owner : ***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตอัพสปีด 8 GB 179 บาท 15 วัน""
    ...    5. กด ""ถัดไป""
    ...    6. Verify Package (1)
    ...    7. Capture screen
    ...    8. กด ""ยืนยัน""
    ...    9. Verify Page (2)
    ...    10. Capture Screen
    ...    11. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...    12. กด ""รับรหัสผ่าน""
    ...    13. กรอก OTP
    ...    14. Capture screen
    ...    15. กด ""ตกลง""
    ...    16. Verify \ Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตอัพสปีด 8 GB 179 บาท 15 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ \ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Register Package    8GB    179Baht    15Day
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_56) Package : Up Speed Internet 9 GB 189 Baht 15 Day
    [Documentation]    ***Owner : ***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตอัพสปีด 9 GB 189 บาท 15 วัน""
    ...    5. กด ""ถัดไป""
    ...    6. Verify Package (1)
    ...    7. Capture screen
    ...    8. กด ""ยืนยัน""
    ...    9. Verify Page (2)
    ...    10. Capture Screen
    ...    11. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...    12. กด ""รับรหัสผ่าน""
    ...    13. กรอก OTP
    ...    14. Capture screen
    ...    15. กด ""ตกลง""
    ...    16. Verify \ Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตอัพสปีด 9 GB 189 บาท 15 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ \ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Register Package    9GB    189Baht    15Day
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_57) Package : Up Speed Internet 10 GB 199 Baht 15 Day
    [Documentation]    ***Owner : ***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตอัพสปีด 10 GB 199 บาท 15 วัน""
    ...    5. กด ""ถัดไป""
    ...    6. Verify Package (1)
    ...    7. Capture screen
    ...    8. กด ""ยืนยัน""
    ...    9. Verify Page (2)
    ...    10. Capture Screen
    ...    11. กรอกหมายเลขโทรศัพท์เพื่อรับ OTP
    ...    12. กด ""รับรหัสผ่าน""
    ...    13. กรอก OTP
    ...    14. Capture screen
    ...    15. กด ""ตกลง""
    ...    16. Verify \ Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตอัพสปีด 10 GB 199 บาท 15 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ \ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Register Package    10GB    199Baht    15Day
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

