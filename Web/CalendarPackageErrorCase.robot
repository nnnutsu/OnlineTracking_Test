*** Settings ***
Resource          Resource/PageKeywords/CalendarPackageErrorCase.robot
Resource          Resource/PageKeywords/CalendarPackageSpecialInternet.robot
Resource          Resource/PageKeywords/CalendarPackageMaxSpeed.robot

*** Test Cases ***
(F7_WEB_2_1_Y_2_135) Verify Not Input Mobile Number
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     แสดงข้อความ "หมายเลขโทรศัพท์ไม่ถูกต้อง กรุณาระบุใหม่อีกครั้ง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Input Wrong Mobile Number    EMPTY
    Select Request Password
    Verify Wrong Mobile Number    PleaseInputNumberAgain
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_136) Input Phone Number Lessthan 10 Digits
    [Documentation]    ***Owner : Nut***
    ...
    ...    Verify OTP กรณี : กรอกหมายเลขโทรศัพท์ไม่ครบ 10 หลัก
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
    ...     *** Expect Result ***
    ...     แสดงข้อความ "หมายเลขโทรศัพท์ไม่ถูกต้อง กรุณาระบุใหม่อีกครั้ง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Input Wrong Mobile Number    WrongNumberLessthan10Digits
    Select Request Password
    Verify Wrong Mobile Number    PleaseInputNumberAgain
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_137) Input Phone Number Morethan 10 Digits
    [Documentation]    ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์มากกว่า 10 หลัก (1)
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอกหมายเลขโทรศัพท์มากกว่า 10 หลัก (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Input Wrong Mobile Number    WrongNumberMorethan10Digits
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_138) Verify Input Mobile Number By Character
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     4. กรอกหมายเลขโทรศัพท์เป็นตัวอักษร (1)
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอกหมายเลขโทรศัพท์เป็นตัวอักษร (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Input Wrong Mobile Number    WrongNumberCharacter
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_139) Verify Input Mobile Number By Special Character
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน
    ...     3. กด "ยืนยัน"
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอกหมายเลขโทรศัพท์เป็นอักขระพิเศษ (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Input Wrong Mobile Number    WrongNumberSpecialCharacter
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_140) Verify Input Mobile Number Wrong Format
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     แสดงข้อความ "หมายเลขของคุณไม่สามารถใช้บริการได้กรุณาระบุหมายเลขในเครือข่าย AIS เพื่อใช้บริการ" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Input Wrong Mobile Number    WrongFormatNumber
    Select Request Password
    Verify Wrong Mobile Number    PleaseInputNumberAIS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_141) Verify Input Phone Number as Non AIS
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     แสดงข้อความ "หมายเลขของคุณไม่สามารถใช้บริการได้กรุณาระบุหมายเลขในเครือข่าย AIS เพื่อใช้บริการ" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Input Wrong Mobile Number    WrongFormatNumber
    Select Request Password
    Verify Wrong Mobile Number    PleaseInputNumberAIS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_142) Verify Not Input OTP
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     ไม่สามารถกด "ตกลง" ได้ (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Choose Language On Register Page    ${ar_LANG}
    Input Mobile Number    ${Number}
    Select Request Password
    Input Wrong OTP    EMPTY
    Verify Login Button Disabled
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_143) Verify Input OTP Less Than 4 Digits
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     ไม่สามารถกด "ตกลง" ได้ (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Choose Language On Register Page    ${ar_LANG}
    Input Mobile Number    ${Number}
    Select Request Password
    Input Wrong OTP    WrongOTPLessthan4Digits
    Verify Login Button Disabled
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_144) Verify Input OTP More Than 4 Digits
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอก OTP เกิน 4 หลักได้ (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Choose Language On Register Page    ${ar_LANG}
    Input Mobile Number    ${Number}
    Select Request Password
    Input Wrong OTP    WrongOTPMorethan4Digits
    Web Capture Screen At Verify Point    WrongOTPMorethan4Digits
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_145) Verify Input OTP By Character
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอก OTP เป็นตัวอักษร (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Choose Language On Register Page    ${ar_LANG}
    Input Mobile Number    ${Number}
    Select Request Password
    Input Wrong OTP    WrongOTPCharacter
    Web Capture Screen At Verify Point    WrongOTPCharacter
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_146) Verify Input OTP By Special Character
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอก OTP เป็นอักขระพิเศษ (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Choose Language On Register Page    ${ar_LANG}
    Input Mobile Number    ${Number}
    Select Request Password
    Input Wrong OTP    WrongOTPSpecialCharacter
    Web Capture Screen At Verify Point    WrongOTPSpecialCharacter
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
    
(F7_WEB_2_1_Y_2_147) Verify Wrong OTP
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     แสดงข้อความ "รหัสผ่านไม่ถูกต้อง กรุณาระบุใหม่อีกครั้ง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Choose Language On Register Page    ${ar_LANG}
    Input Mobile Number    ${Number}
    Select Request Password
    Input Wrong OTP    WrongOTP
    Select Login
    Verify Wrong OTP    
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_148) Verify Wrong OTP 3 Time
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     แสดงข้อความ "คุณระบุรหัสผ่านไม่ถูกต้องเกิน 3 ครั้ง กรุณาระบุหมายเลขโทรศัพท์เคลื่อนที่ เพื่อขอรหัสผ่านใหม่อีกครั้ง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Max Speed Internet
    Register Package    100MB    9Baht    1Day
    Choose Language On Register Page    ${ar_LANG}
    Input Mobile Number    ${Number}
    Select Request Password
    Input Wrong Otp 3 Times
    Verify Error Wrong Otp 3 Times
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

#(F7_WEB_2_1_Y_2_149) OTP หมดอายุ ทำไม่ได้ 
(F7_WEB_2_1_Y_2_150) Verify Not Input Friend Number 
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     แสดงข้อความ "กรุณากรอกเบอร์โทรศัพท์ให้ถูกต้อง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet   1Mbps    25Baht    1Day
    Select Confirm Package For Friend
    Verify Wrong Friend Mobile Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_151) Verify Input Friend Number Less Than 10 Digits
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     แสดงข้อความ "กรุณากรอกเบอร์โทรศัพท์ให้ถูกต้อง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet   1Mbps    25Baht    1Day
    Input Wrong Friend Mobile Number    Lessthan10Digits
    Verify Wrong Friend Mobile Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_152) Verify Input Friend Number More Than 10 Digits
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจมากกว่า 10 หลัก (1)
    ...     *** Expect Result ***
    ...     ไม่สามารถกรอกเบอร์โทรศัพท์เกิน 10 หลัก (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet   1Mbps    25Baht    1Day
    Input Wrong Friend Mobile Number    Morethan10Digits
    Verify Friend Mobile Number 10Digits
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_153) Verify Input Friend Number as Character
    [Documentation]    ***Owner : Nut***
    ...
    ...    กรอกตัวอักษรในช่องหมายเลขโทรศัพท์ผู้รับ package
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจเป็นตัวอักษร (1)
    ...     *** Expect Result ***
    ...     แสดงข้อความ "กรุณากรอกเบอร์โทรศัพท์ให้ถูกต้อง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    25Baht    1Day
    Input Wrong Friend Mobile Number    Character
    Verify Wrong Friend Mobile Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_154) Verify Input Friend Number as Special Character
    [Documentation]    ***Owner : Nut***
    ...
    ...    กรอกตัวอักขระพิเศษในช่องหมายเลขโทรศัพท์ผู้รับ package
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจเป็นอักขระพิเศษ (1)
    ...     *** Expect Result ***
    ...     แสดงข้อความ "กรุณากรอกเบอร์โทรศัพท์ให้ถูกต้อง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    25Baht    1Day
    Input Wrong Friend Mobile Number    SpecialCharacter
    Verify Wrong Friend Mobile Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_155) Verify Input Friend Number Not Start With 0
    [Documentation]    ***Owner : Nut***
    ...
    ...    กรอกหมายเลขโทรศัพท์ไม่ขึ้นต้นด้วย 0 ในช่องหมายเลขโทรศัพท์ผู้รับ package
    ...
    ...    Status : Active
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจผิดรูปแบบ (1)
    ...     *** Expect Result ***
    ...     แสดงข้อความ "กรุณากรอกเบอร์โทรศัพท์ให้ถูกต้อง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet   1Mbps    25Baht    1Day
    Input Wrong Friend Mobile Number    NotStart0
    Verify Wrong Friend Mobile Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
    
(F7_WEB_2_1_Y_2_156) Verify Input Friend Number By Not AIS Network
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     แสดงข้อความ "" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}    
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet   1Mbps    25Baht    1Day
    Input Wrong Friend Mobile Number    NonAIS
    Select Confirm Package For Friend
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    #Verify Result Message
    Verify Result Message Error Not AIS Network
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F7_WEB_2_1_Y_2_157) Verify Input Friend Number Same Sender Number
    [Documentation]     ***Owner : Nut***
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
    ...     *** Expect Result ***
    ...     แสดงข้อความ "" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}    
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet   1Mbps    25Baht    1Day
    Input Friend Mobile Number    ${Number}
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
