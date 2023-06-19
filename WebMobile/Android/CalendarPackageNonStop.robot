*** Settings ***
Resource          Resource/PageKeywords/Common.robot
Resource          Resource/PageKeywords/CalendarPackageNonStop.robot

*** Test Cases ***
(F2_WEB_2_1_Y_2_33) Register Package Internet 512kbps 22Baht 1Day
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 512 kbps 22 บาท 1 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 512 kbps 22 บาท 1 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package        512kbps    22Baht    1Day
    #Select On-Top Internet Non-Stop Package        512kbps    22Baht    500MB    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F2_WEB_2_1_Y_2_34) Register Package Internet 512kbps 99Baht 7Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 512 kbps 99 บาท 7 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 512 kbps 89 บาท 7 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    512kbps    99Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F2_WEB_2_1_Y_2_35) Register Package Internet 512kbps 321Baht 30Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 512 kbps 321 บาท 30 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 512 kbps 300 บาท 30 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    512kbps    321Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F2_WEB_2_1_Y_2_36) Register Package Internet 1Mbps 25Baht 1Day
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 1 Mbps 25 บาท 1 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    1Mbps    25Baht    1Day
    # Select On-Top Internet Non-Stop Package    1Mbps    25Baht    500MB    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
    
(F2_WEB_2_1_Y_2_37) Register Package Internet 1Mbps 120Baht 7Days    
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 1 Mbps 120 บาท 7 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 1 Mbps 120 บาท 7 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    1Mbps    120Baht    7Day
    # Select On-Top Internet Non-Stop Package    1Mbps    120Baht    2.5GB    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
    
(F2_WEB_2_1_Y_2_38) Register Package Internet 1Mbps 350Baht 30Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 1 Mbps 350 บาท 30 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 1 Mbps 350 บาท 30 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    1Mbps    350Baht    30Day
    # Select On-Top Internet Non-Stop Package    1Mbps    350Baht    7.5GB    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
    
(F2_WEB_2_1_Y_2_39) Register Package Internet 4Mbps 32Baht 1Day
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 4 Mbps 32 บาท 1 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 4 Mbps 32 บาท 1 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    4Mbps    32Baht    1Day
    # Select On-Top Internet Non-Stop Package    4Mbps    32Baht    1GB    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
    
(F2_WEB_2_1_Y_2_40) Register Package Internet 4Mbps 220Baht 7Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 4 Mbps 220 บาท 7 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 4 Mbps 220 บาท 7 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    4Mbps    220Baht    7Day
    # Select On-Top Internet Non-Stop Package    4Mbps    220Baht    7GB    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
    
(F2_WEB_2_1_Y_2_41) Register Package Internet 4Mbps 650Baht 30Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 4 Mbps 650 บาท 30 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 4 Mbps 650 บาท 30 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    4Mbps    650Baht    30Day
    # Select On-Top Internet Non-Stop Package    4Mbps    650Baht    20GB    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
    
(F2_WEB_2_1_Y_2_42) Register Package Internet 6Mbps 45Baht 1Day
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 6 Mbps 45 บาท 1 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 6 Mbps 45 บาท 1 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    6Mbps    45Baht    1Day
    # Select On-Top Internet Non-Stop Package    6Mbps    45Baht    1.5GB    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
    
(F2_WEB_2_1_Y_2_43) Register Package Internet 6Mbps 270Baht 7Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 6 Mbps 270 บาท 7 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 6 Mbps 270 บาท 7 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    6Mbps    270Baht    7Day
    # Select On-Top Internet Non-Stop Package    6Mbps    270Baht    9GB    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
   
(F2_WEB_2_1_Y_2_44) Register Package Internet 6Mbps 850Baht 30Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 6 Mbps 850 บาท 30 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 6 Mbps 850 บาท 30 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    6Mbps    850Baht    30Day
    # Select On-Top Internet Non-Stop Package    6Mbps    850Baht    25GB    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
   
(F2_WEB_2_1_Y_2_45) Register Package Internet 10Mbps 55Baht 1Day 
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 10 Mbps 55 บาท 1 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 10 Mbps 55 บาท 1 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    10Mbps    55Baht    1Day
    # Select On-Top Internet Non-Stop Package    10Mbps    55Baht    2GB    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
   
(F2_WEB_2_1_Y_2_46) Register Package Internet 10Mbps 330Baht 7Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 10 Mbps 330 บาท 7 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 10 Mbps 330 บาท 7 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    10Mbps    330Baht    7Day
    # Select On-Top Internet Non-Stop Package    10Mbps    330Baht    14GB    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
   
(F2_WEB_2_1_Y_2_47) Register Package Internet 10Mbps 1100Baht 30Days
    [Documentation]     ***Owner : Gun***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...    1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือกเมนู : เน็ตสุดคุ้ม
    ...    3. เลือกแพ็กเกจ : 10 Mbps 1,100 บาท 30 วัน (1)
    ...    4. Cap Screen
    ...    5. กด "ยืนยัน"
    ...    6. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    7. Cap Screen
    ...    8. กด "ตกลง"
    ...    9. แสดงข้อความ Success / Error (3)
    ...    10. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงแพ็กเกจ 10 Mbps 1,100 บาท 30 วัน (1)
    ...    แสดงหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab    SpecialInternet
    Select On-Top Internet Non-Stop Package    10Mbps    1100Baht    30Day
    # Select On-Top Internet Non-Stop Package    10Mbps    1100Baht    33GB    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 
   