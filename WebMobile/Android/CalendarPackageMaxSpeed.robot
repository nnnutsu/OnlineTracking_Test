*** Settings ***
Resource          Resource/PageKeywords/Common.robot
Resource          Resource/PageKeywords/CalendarPackageMaxSpeed.robot


*** Test Cases ***
(F1_WEB_2_1_Y_2_1) Register Package Internet 100MB 9Baht 1Day Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package (1)
    ...     2. Cap Screen
    ...     3. เลือกแพ็กเกจ : 100 MB 9 บาท 1 วัน (2)
    ...     4. Cap Screen
    ...     5. กด "ยืนยัน"
    ...     6. กรอกหมายเลขโทรศัพท์ (3)
    ...     7. Cap Screen
    ...     8. กด "รับรหัสผ่าน"
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 100 MB 9 บาท 1 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    100MB    9Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F1_WEB_2_1_Y_2_2) Register Package Internet 100MB 9Baht 1Day OnSpot
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 100 MB 9 บาท 1 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ (2)
    ...     6. Cap Screen
    ...     7. กด "รับรหัสผ่าน"
    ...     8. กรอกรหัส OTP (3)
    ...     9. Cap Screen
    ...     10. กด "ตกลง"
    ...     11. แสดงหน้า ipay (4)
    ...     12. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 100 MB 9 บาท 1 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO_Coparate
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    100MB    9Baht    1Day
    Input Number    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Web Capture Screen At Verify Point    ipay
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F1_WEB_2_1_Y_2_3) Register Package Internet 200MB 15Baht 1Day Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 200 MB 15 บาท 1 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 200 MB 15 บาท 1 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    200MB    15Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F1_WEB_2_1_Y_2_4) Register Package Internet 600MB 20Baht 1Day Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 600 MB 20 บาท 1 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 600 MB 20 บาท 1 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    600MB    20Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F1_WEB_2_1_Y_2_5) Register Package Internet 1GB 35Baht 1Day Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 1 GB 35 บาท 1 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 1 GB 35 บาท 1 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    1GB    35Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}
    
(F1_WEB_2_1_Y_2_6) Register Package Internet 1GB 65Baht 3Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 1 GB 65 บาท 3 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 1 GB 65 บาท 3 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    1GB    65Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_7) Register Package Internet 1GB 99Baht 7Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 1 GB 99 บาท 7 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 1 GB 99 บาท 7 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    1GB    99Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_8) Register Package Internet 1GB 199Baht 30Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 1 GB 199 บาท 30 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 1 GB 199 บาท 30 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    1GB    199Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_9) Register Package Internet 1.5GB 39Baht 1Day Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 1.5 GB 39 บาท 1 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 1.5 GB 39 บาท 1 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    1.5GB    39Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_10) Register Package Internet 1.5GB 69Baht 3Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 1.5 GB 69 บาท 3 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 1.5 GB 69 บาท 3 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    1.5GB    69Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_11) Register Package Internet 1.5GB 109Baht 7Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 1.5 GB 109 บาท 7 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 1.5 GB 109 บาท 7 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    1.5GB    109Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
 
(F1_WEB_2_1_Y_2_12) Register Package Internet 1.5GB 229Baht 30Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 1.5 GB 229 บาท 30 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 1.5 GB 229 บาท 30 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    1.5GB    229Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_13) Register Package Internet 2GB 45Baht 1Day Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 2 GB 45 บาท 1 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 2 GB 45 บาท 1 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    2GB    45Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_14) Register Package Internet 2GB 75Baht 3Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 2 GB 75 บาท 3 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 2 GB 75 บาท 3 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    2GB    75Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
  
(F1_WEB_2_1_Y_2_15) Register Package Internet 2GB 115Baht 7Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 2 GB 115 บาท 7 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 2 GB 115 บาท 7 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    2GB    115Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_16) Register Package Internet 2GB 239Baht 30Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 2 GB 239 บาท 30 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 2 GB 239 บาท 30 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    2GB    239Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_17) Register Package Internet 3GB 49Baht 1Day Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 3 GB 49 บาท 1 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 3 GB 49 บาท 1 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    3GB    49Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_18) Register Package Internet 3GB 79Baht 3Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 3 GB 79 บาท 3 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 3 GB 79 บาท 3 วัน(2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    3GB    79Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_19) Register Package Internet 3GB 119Baht 7Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 3 GB 119 บาท 7 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 3 GB 119 บาท 7 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    3GB    119Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_20) Register Package Internet 3GB 399Baht 30Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 3 GB 399 บาท 30 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 3 GB 399 บาท 30 วัน(2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    3GB    399Baht    30Day
    Input Number    ${Number}
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_21) Register Package Internet 4GB 69Baht 1Day Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 4 GB 69 บาท 1 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 4 GB 69 บาท 1 วัน(2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    4GB    69Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_22) Register Package Internet 4GB 99Baht 3Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 4 GB 99 บาท 3 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 4 GB 99 บาท 3 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    4GB    99Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
 
(F1_WEB_2_1_Y_2_23) Register Package Internet 4GB 135Baht 7Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 4 GB 135 บาท 7 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 4 GB 135 บาท 7 วัน(2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    4GB    135Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_24) Register Package Internet 4GB 450Baht 30Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 4 GB 450 บาท 30 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 4 GB 450 บาท 30 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    4GB    450Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_25) Register Package Internet 5GB 75Baht 1Day Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 5 GB 75 บาท 1 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 5 GB 75 บาท 1 วัน(2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    5GB    75Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_26) Register Package Internet 5GB 105Baht 3Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 5 GB 105 บาท 3 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 5 GB 105 บาท 3 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    5GB    105Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_27) Register Package Internet 5GB 150Baht 7Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 5 GB 150 บาท 7 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 5 GB 150 บาท 7 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    5GB    150Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_28) Register Package Internet 5GB 488Baht 30Days Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 5 GB 488 บาท 30 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 5 GB 488 บาท 30 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package    5GB    488Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
  
(F1_WEB_2_1_Y_2_29) Register Package Internet 8GB 89Baht 1Day NextG Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 8 GB 89 บาท 1 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 8 GB 89 บาท 1 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5)  
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package NextG    8GB    89Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F1_WEB_2_1_Y_2_30) Register Package Internet 8GB 149Baht 3Days NextG Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 8 GB 149 บาท 3 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 8 GB 149 บาท 3 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package NextG    8GB    149Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
  
(F1_WEB_2_1_Y_2_31) Register Package Internet 8GB 199Baht 7Days NextG Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 8 GB 199 บาท 7 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ 8 GB 199 บาท 7 วัน (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package NextG    8GB    199Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
  
(F1_WEB_2_1_Y_2_32) Register Package Internet 8GB 599Baht 30Days NextG Ontop
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกแพ็กเกจ : 8 GB 599 บาท 30 วัน (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. กรอกรหัส OTP (4)
    ...     10. Cap Screen
    ...     11. กด "ตกลง"
    ...     12. แสดงข้อความ Success / Error (5)
    ...     13. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหน้า On-top Package (1)
    ...    แสดงแพ็กเกจ  (2)
    ...    แสดงหมายเลขโทรศัพท์ (3)
    ...    แสดงรหัส OTP (4)
    ...    แสดงข้อความ "" (5) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    MaxSpeedInternet
    Select On-Top Max Speed Internet Package NextG    8GB    599Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
