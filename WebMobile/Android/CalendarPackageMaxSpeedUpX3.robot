*** Settings ***
Resource          Resource/PageKeywords/Common.robot
Resource          Resource/PageKeywords/CalendarPackageFixCase.robot
Resource          Resource/PageKeywords/CalendarPackageMaxSpeed.robot
*** Test Cases ***
(F1_WEB_2_1_Y_2_1) Register Package Internet 15GB 75Baht 1Day Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package (1)
    ...     2. เลือกแพ็กเกจ : 15 GB 75 บาท 1 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 15 GB 75 บาท 1 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Up X3 Internet Package    15GB    75Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_2) Register Package Internet 15GB 105Baht 3Day Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package (1)
    ...     2. เลือกแพ็กเกจ : 15 GB 105 บาท 3 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 15 GB 105 บาท 3 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Up X3 Internet Package    15GB    105Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_3) Register Package Internet 15GB 150Baht 7Day Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package (1)
    ...     2. เลือกแพ็กเกจ : 15 GB 150 บาท 7 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 15 GB 150 บาท 7 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Up X3 Internet Package    15GB    150Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_4) Register Package Internet 15GB 488Baht 30Day Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package (1)
    ...     2. เลือกแพ็กเกจ : 15 GB 488 บาท 30 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 15 GB 488 บาท 30 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Up X3 Internet Package    15GB    488Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
    
(F1_WEB_2_1_Y_2_5) Check Wording Tab Max Speed Internet Up X3
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package (1)
    ...     2. เลือกเมนู : เน็ตเต็มสปีด (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "*พิเศษ เฉพาะวันที่ 25 มี.ค. - 12 เม.ย. 63 รับเน็ตเพิ่ม 3เท่า จาก 5GB เป็น 15GB*" (1) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Verified Wording Under Table Max Speed Internet Up X3
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}
    