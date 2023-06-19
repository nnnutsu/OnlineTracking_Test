*** Settings ***
Resource          Resource/PageKeywords/CalendarPackageSpecialInternet.robot

*** Test Cases ***
(F2_WEB_1-6_1,2_Y_2_33) Package : Internet Non-Stop 512 Kbps 22 Baht 1 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 512 Kbps 22 บาท 1วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 512 Kbps 22 บาท 1วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    500MB    512Kbps    22Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_34) Package : Internet Non-Stop 1 Mbps 25 Baht 1 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 1 Mbps 25 บาท 1 วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 1 Mbps 25 บาท 1 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    500MB    1Mbps    25Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_35) Package : Internet Non-Stop 4 Mbps 32 Baht 1 Day
    [Documentation]    ***Owner : Nut ***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 4 Mbps 32 บาท 1วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 4 Mbps 32 บาท 1วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    1GB    4Mbps    32Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_36) Package : Internet Non-Stop 6 Mbps 45 Baht 1 Day
    [Documentation]    ***Owner : Nut ***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 6 Mbps 45 บาท 1วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 6 Mbps 45 บาท 1วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    1.5GB    6Mbps    45Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_37) Package : Internet Non-Stop 10 Mbps 55 Baht 1 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 10 Mbps 55 บาท 1 วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 10 Mbps 55 บาท 1 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    2GB    10Mbps    55Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_38) Package : Internet Non-Stop 512 Kbps 99 Baht 7 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 512 Kbps 89 บาท 7 วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 512 Kbps 99 บาท 7 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    2.5GB    512Kbps    99Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_39) Package : Internet Non-Stop 1 Mbps 120 Baht 7 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 1 Mbps 120 บาท 7 วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 1 Mbps 120 บาท 7 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    2.5GB    1Mbps    120Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_40) Package : Internet Non-Stop 4 Mbps 220 Baht 7 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 4 Mbps 220 บาท 7 วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 4 Mbps 220 บาท 7 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    7GB    4Mbps    220Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_41) Package : Internet Non-Stop 6 Mbps 270 Baht 7 Day
    [Documentation]    ***Owner : ***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 6 Mbps 270 บาท 7 วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 6 Mbps 270 บาท 7 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    9GB    6Mbps    270Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_42) Package : Internet Non-Stop 10 Mbps 330 Baht 7 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 10 Mbps 330 บาท 7 วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 10 Mbps 330 บาท 7 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    14GB    10Mbps    330Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_43) Package : Internet Non-Stop 512 Kbps 321 Baht 30 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 512 Kbps 321 บาท 30 วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 512 Kbps 321 บาท 30 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    7.5GB    512Kbps    321Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_44) Package : Internet Non-Stop 1 Mbps 350 Baht 30 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 1 Mbps 350 บาท 30 วัน""
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
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 1 Mbps 350 บาท 30 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    7.5GB    1Mbps    350Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_45) Package : Internet Non-Stop 4 Mbps 650 Baht 30 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 4 Mbps 650 บาท 30 วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 4 Mbps 650 บาท 30 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    20GB    4Mbps    650Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_46) Package : Internet Non-Stop 6 Mbps 850 Baht 30 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 6 Mbps 850 บาท 30 วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 6 Mbps 850 บาท 30 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    25GB    6Mbps    850Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F2_WEB_1-6_1,2_Y_2_47) Package : Internet Non-Stop 10 Mbps 1100 Baht 30 Day
    [Documentation]    ***Owner : Nut***
    ...
    ...    Status : Active
    ...
    ...    ***Test Step***
    ...    "1. เปิด browser
    ...    2. เข้า Link : https://stg.m.ais.co.th/ontop-package
    ...    3. เลือก Tab ""เน็ตเต็มสุดคุ้ม""
    ...    4. สมัครแพ็คเกจ ""อินเทอร์เน็ตไม่อั้น 10 Mbps 1100 บาท 30 วัน""
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
    ...    16. Verify Page (3)
    ...    17. Capture screen
    ...    18. Verify SMS (4)
    ...    19. Capture Screen
    ...
    ...    ***Expected Result***
    ...    "Verify Package (1)
    ...    แพ็กเกจเสริม เลือกแพ็กเกจอินเทอร์เน็ตสุดคุ้ม ""อินเทอร์เน็ตไม่อั้น 10 Mbps 89 บาท 30 วัน""
    ...
    ...    Verify Page (2)
    ...    แสดงข้อความ ""ล็อคอิน"" , ""หมายเลขโทรศัพท์""
    ...
    ...    Verify Page (3)
    ...    แสดงข้อความ ""ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ""
    ...
    ...    Verify SMS (4)
    ...    แสดงข้อความ ""***"""
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Register Package Internet Non-Stop    33GB    10Mbps    1100Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
