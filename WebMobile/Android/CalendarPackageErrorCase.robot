*** Settings ***
Resource          Resource/PageKeywords/Common.robot
Resource          Resource/PageKeywords/CalendarPackageErrorCase.robot

*** Test Cases ***
(F7_WEB_2_1_Y_2_135) Verify Not Input Mobile Number
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. ไม่กรอกหมายเลขโทรศัพท์
    ...     5. กด "รับรหัสผ่าน" (1)
    ...     6. Cap Screen
    ...     
    ...     *** Expect Result ***
    ...     แสดงข้อความ "หมายเลขโทรศัพท์ไม่ถูกต้อง กรุณาระบุใหม่อีกครั้ง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Not Input Mobile Number
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F7_WEB_2_1_Y_2_136) Verify Input Mobile Number Less 10 Digit
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์น้อยกว่า 10 หลัก
    ...     5. กด "รับรหัสผ่าน" (1)
    ...     6. Cap Screen
    ...     
    ...     *** Expect Result ***
    ...     แสดงข้อความ "หมายเลขโทรศัพท์ไม่ถูกต้อง กรุณาระบุใหม่อีกครั้ง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Verify Mobile Number    ${txtNumberLess10}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}   

(F7_WEB_2_1_Y_2_137) Verify Input Mobile Number Than 10 Digit
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์มากกว่า 10 หลัก (1)
    ...     
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอกหมายเลขโทรศัพท์มากกว่า 10 หลัก (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Verify Mobile Number Can't Input    ${txtNumberThan10}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}  

(F7_WEB_2_1_Y_2_138) Verify Input Mobile Number By Character
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์เป็นตัวอักษร (1)
    ...     
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอกหมายเลขโทรศัพท์เป็นตัวอักษร (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Verify Mobile Number Can't Input    ${txtNumberByCharacter}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}   

(F7_WEB_2_1_Y_2_139) Verify Input Mobile Number By Special Character
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอกหมายเลขโทรศัพท์เป็นอักขระพิเศษ (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Verify Mobile Number Can't Input    ${txtNumberBySpecialCharacter}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}  
      
(F7_WEB_2_1_Y_2_140) Verify Input Mobile Number Wrong Format
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์ผิดรูปแบบ
    ...     5. กด "รับรหัสผ่าน" (1)
    ...     6. Cap Screen
    ...     
    ...     *** Expect Result ***
    ...     แสดงข้อความ "หมายเลขของคุณไม่สามารถใช้บริการได้กรุณาระบุหมายเลขในเครือข่าย AIS เพื่อใช้บริการ" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Verify Mobile Number Non AIS    ${txtNumberWrongFormat}

    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}   

(F7_WEB_2_1_Y_2_141) Verify Input Mobile Number By Not AIS Network
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์ต่างเครือข่าย
    ...     5. กด "รับรหัสผ่าน" (1)
    ...     6. Cap Screen
    ...     
    ...     *** Expect Result ***
    ...     แสดงข้อความ "หมายเลขของคุณไม่สามารถใช้บริการได้กรุณาระบุหมายเลขในเครือข่าย AIS เพื่อใช้บริการ" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Verify Mobile Number Non AIS    ${txtNumberByDtac}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}   
      
(F7_WEB_2_1_Y_2_142) Verify Not Input OTP
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์
    ...     5. กด "รับรหัสผ่าน"
    ...     6. ไม่กรอก OTP (1)
    ...     
    ...     *** Expect Result ***
    ...     ไม่สามารถกด "ตกลง" ได้ (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Not Input OTP    ${Number}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}   
      
(F7_WEB_2_1_Y_2_143) Verify Input OTP Less 4 Digit
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์
    ...     5. กด "รับรหัสผ่าน"
    ...     6. กรอก OTP ไม่ครบ 4 หลัก (1)
    ...     
    ...     *** Expect Result ***
    ...     ไม่สามารถกด "ตกลง" ได้ (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Verify OTP Can't Input    ${Number}    ${txtOtpNotComplete}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}   
      
(F7_WEB_2_1_Y_2_144) Verify Input OTP More 4 Digit
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์
    ...     5. กด "รับรหัสผ่าน"
    ...     6. กรอก OTP เกิน 4 หลัก (1)
    ...     
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอก OTP เกิน 4 หลักได้ (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Verified Fill OTP More 4 Digit    ${Number}    ${txtOTPThan4}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}   

(F7_WEB_2_1_Y_2_145) Verify Input OTP By Character
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์
    ...     5. กด "รับรหัสผ่าน"
    ...     6. กรอก OTP เป็นตัวอักษร (1)
    ...     
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอก OTP เป็นตัวอักษร (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Verify OTP Can't Input    ${Number}    ${txtNumberByCharacter}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}   
      
(F7_WEB_2_1_Y_2_146) Verify Input OTP By Special Character
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์
    ...     5. กด "รับรหัสผ่าน"
    ...     6. กรอก OTP เป็นอักขระพิเศษ (1)
    ...     
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอก OTP เป็นอักขระพิเศษ (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Verify OTP Can't Input    ${Number}    ${txtNumberBySpecialCharacter}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}   
      
(F7_WEB_2_1_Y_2_147) Verify Wrong OTP
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์
    ...     5. กด "รับรหัสผ่าน"
    ...     6. กรอก OTP ผิด
    ...     7. กด "ตกลง" (1)
    ...     8. Cap Screen
    ...     
    ...     *** Expect Result ***
    ...     แสดงข้อความ "รหัสผ่านไม่ถูกต้อง กรุณาระบุใหม่อีกครั้ง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Verify Wrong OTP    ${Number}    ${txtWrongOTP}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}   
      
(F7_WEB_2_1_Y_2_148) Verify Wrong OTP 3 Time
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์
    ...     5. กด "รับรหัสผ่าน"
    ...     6. กรอก OTP ผิดเกิน 3 ครั้ง
    ...     7. กด "ตกลง" (1)
    ...     8. Cap Screen
    ...     
    ...     *** Expect Result ***
    ...     แสดงข้อความ "คุณระบุรหัสผ่านไม่ถูกต้องเกิน 3 ครั้ง กรุณาระบุหมายเลขโทรศัพท์เคลื่อนที่ เพื่อขอรหัสผ่านใหม่อีกครั้ง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Change Language Login Ontop
    Verify Input Wrong Otp 3 Times    ${Number}    ${txtWrongOTP}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}   
      
#(F7_WEB_2_1_Y_2_149) OTP หมดอายุ ทำไม่ได้ 
(F7_WEB_2_1_Y_2_150) Verify NetGift : Not Input Friend Number 
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. ไม่กรอกหมายโทรศัพท์ผู้รับแพ็กเกจ
    ...     5. กด "ยืนยัน" (1)
    ...     6. Cap Screen
    ...     
    ...     *** Expect Result ***
    ...     แสดงข้อความ "กรุณากรอกเบอร์โทรศัพท์ให้ถูกต้อง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Net Gift Internet Package    1Mbps    25Baht    1Day
    Not Input Friend Number
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}  
      
(F7_WEB_2_1_Y_2_151) Verify NetGift : Input Friend Number Less 10 Digit
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจน้อยกว่า 10 หลัก
    ...     5. กด "ยืนยัน" (1)
    ...     6. Cap Screen
    ...     
    ...     *** Expect Result ***
    ...     แสดงข้อความ "กรุณากรอกเบอร์โทรศัพท์ให้ถูกต้อง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Net Gift Internet Package    1Mbps    25Baht    1Day
    Verify Friend Number    ${txtNumberLess10}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}  
      
(F7_WEB_2_1_Y_2_152) Verify NetGift : Input Friend Number More 10 Digit
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจมากกว่า 10 หลัก (1)
    ...     
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอกเบอร์โทรศัพท์เกิน 10 หลัก (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Net Gift Internet Package    1Mbps    25Baht    1Day
    Verify Friend Number Can't Input    ${txtNumberThan10}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}  
      
(F7_WEB_2_1_Y_2_153) Verify NetGift : Input Friend Number By Character
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจเป็นตัวอักษร (1)
    ...     
    ...     *** Expect Result ***
    ...     แสดงข้อความ "กรุณากรอกเบอร์โทรศัพท์ให้ถูกต้อง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Net Gift Internet Package    1Mbps    25Baht    1Day
    Verify Wording Friend Number Can't Input    ${txtNumberByCharacter}  
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
      
(F7_WEB_2_1_Y_2_154) Verify NetGift : Input Friend Number By Special Character
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจเป็นอักขระพิเศษ (1)
    ...     
    ...     *** Expect Result ***
    ...     แสดงข้อความ "กรุณากรอกเบอร์โทรศัพท์ให้ถูกต้อง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Net Gift Internet Package    1Mbps    25Baht    1Day
    Verify Wording Friend Number Can't Input    ${txtNumberBySpecialCharacter}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
      
(F7_WEB_2_1_Y_2_155) Verify NetGift : Input Friend Number Wrong Format
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจผิดรูปแบบ (1)
    ...     
    ...     *** Expect Result ***
    ...     แสดงข้อความ "กรุณากรอกเบอร์โทรศัพท์ให้ถูกต้อง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Net Gift Internet Package    1Mbps    25Baht    1Day
    Verify Wording Friend Number Can't Input    ${txtNumberWrongFormat}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F7_WEB_2_1_Y_2_156) Verify NetGift : Input Friend Number By Not AIS Network
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจต่างเครือข่าย
    ...     5. กด "ยืนยัน"
    ...     6. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP
    ...     7. กด "ตกลง" (1)
    ...     8. Cap Screen
    ...     
    ...     *** Expect Result ***
    ...     แสดงข้อความ "" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Net Gift Internet Package    1Mbps    25Baht    1Day 
    Verify Friend Number Non AIS    ${txtNumberByDtac}    ${Number}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 


(F7_WEB_2_1_Y_2_157) Verify NetGift : Input Friend Number Same Sender Number
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับและผู้ส่งเป็นเบอร์เดียวกัน
    ...     5. กด "ยืนยัน"
    ...     6. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP
    ...     7. กด "ตกลง" (1)
    ...     8. Cap Screen
    ...     
    ...     *** Expect Result ***
    ...     แสดงข้อความ "" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Number_Friend}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Net Gift Internet Package    1Mbps    25Baht    1Day
    Verify Friend Number Same Sender Number    ${Number_Friend}    ${Number}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}      
