*** Settings ***
Resource          Resource/PageKeywords/Common.robot
Resource          Resource/PageKeywords/CalendarPackageUpSpeed.robot

*** Test Cases ***
(F3_WEB_2_1_Y_2_48) Register Package Internet 1GB 39Baht 7Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม
    ...     3. เลือกแพ็กเกจ : 1 GB 39 บาท 7 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ยืนยัน"
    ...     6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     7. Cap Screen
    ...     8. กด "ตกลง"
    ...     9. แสดงข้อความ Success / Error (3)
    ...     10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 1 GB 39 บาท 7 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Up Speed Internet Package    1GB    39Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F3_WEB_2_1_Y_2_49) Register Package Internet 2GB 49Baht 7Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม
    ...     3. เลือกแพ็กเกจ : 2 GB 49 บาท 7 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ยืนยัน"
    ...     6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     7. Cap Screen
    ...     8. กด "ตกลง"
    ...     9. แสดงข้อความ Success / Error (3)
    ...     10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 2 GB 49 บาท 7 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Up Speed Internet Package    2GB    49Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F3_WEB_2_1_Y_2_50) Register Package Internet 3GB 79Baht 7Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม
    ...     3. เลือกแพ็กเกจ : 3 GB 79 บาท 7 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ยืนยัน"
    ...     6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     7. Cap Screen
    ...     8. กด "ตกลง"
    ...     9. แสดงข้อความ Success / Error (3)
    ...     10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 3 GB 79 บาท 7 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Up Speed Internet Package    3GB    79Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F3_WEB_2_1_Y_2_51) Register Package Internet 4GB 89Baht 7Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม
    ...     3. เลือกแพ็กเกจ : 4 GB 89 บาท 7 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ยืนยัน"
    ...     6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     7. Cap Screen
    ...     8. กด "ตกลง"
    ...     9. แสดงข้อความ Success / Error (3)
    ...     10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 4 GB 89 บาท 7 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Up Speed Internet Package    4GB    89Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
   
(F3_WEB_2_1_Y_2_52) Register Package Internet 5GB 99Baht 7Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม
    ...     3. เลือกแพ็กเกจ : 5 GB 99 บาท 7 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ยืนยัน"
    ...     6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     7. Cap Screen
    ...     8. กด "ตกลง"
    ...     9. แสดงข้อความ Success / Error (3)
    ...     10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 5 GB 99 บาท 7 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Up Speed Internet Package    5GB    99Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F3_WEB_2_1_Y_2_53) Register Package Internet 6GB 149Baht 15Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม
    ...     3. เลือกแพ็กเกจ : 6 GB 149 บาท 15 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ยืนยัน"
    ...     6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     7. Cap Screen
    ...     8. กด "ตกลง"
    ...     9. แสดงข้อความ Success / Error (3)
    ...     10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 6 GB 149 บาท 15 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Up Speed Internet Package    6GB    149Baht    15Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F3_WEB_2_1_Y_2_54) Register Package Internet 7GB 159Baht 15Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม
    ...     3. เลือกแพ็กเกจ : 7 GB 159 บาท 15 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ยืนยัน"
    ...     6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     7. Cap Screen
    ...     8. กด "ตกลง"
    ...     9. แสดงข้อความ Success / Error (3)
    ...     10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 7 GB 159 บาท 15 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Up Speed Internet Package    7GB    159Baht    15Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F3_WEB_2_1_Y_2_55) Register Package Internet 8GB 179Baht 15Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม
    ...     3. เลือกแพ็กเกจ : 8 GB 179 บาท 15 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ยืนยัน"
    ...     6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     7. Cap Screen
    ...     8. กด "ตกลง"
    ...     9. แสดงข้อความ Success / Error (3)
    ...     10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 8 GB 179 บาท 15 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Up Speed Internet Package    8GB    179Baht    15Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F3_WEB_2_1_Y_2_56) Register Package Internet 9GB 189Baht 15Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม
    ...     3. เลือกแพ็กเกจ : 9 GB 189 บาท 15 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ยืนยัน"
    ...     6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     7. Cap Screen
    ...     8. กด "ตกลง"
    ...     9. แสดงข้อความ Success / Error (3)
    ...     10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 9 GB 189 บาท 15 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Up Speed Internet Package    9GB    189Baht    15Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
    
(F3_WEB_2_1_Y_2_57) Register Package Internet 10GB 199Baht 15Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม
    ...     3. เลือกแพ็กเกจ : 10 GB 199 บาท 15 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ยืนยัน"
    ...     6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     7. Cap Screen
    ...     8. กด "ตกลง"
    ...     9. แสดงข้อความ Success / Error (3)
    ...     10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 10 GB 199 บาท 15 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Up Speed Internet Package    10GB    199Baht    15Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
    
