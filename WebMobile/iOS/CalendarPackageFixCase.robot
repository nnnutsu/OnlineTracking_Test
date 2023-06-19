*** Settings ***
Resource          Resource/PageKeywords/CalendarPackageMaxSpeed.robot
Resource          Resource/PageKeywords/CalendarPackageSpecialInternet.robot

*** Test Cases ***
(F6_WEB_2_1_Y_2_109) Check Wording Tab Max Speed Internet Down X3
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตเต็มสปีด (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     ไม่แสดงข้อความใต้ตาราง (1)
    &{#dict_device_name}=    Create Dictionary
    Log    ${lo_OnlineTracking_Test_local_config_file_path}
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Verify Wording Under Package Max Speed Internet Down X3
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_2_1_Y_2_109) Check Wording Tab Max Speed Internet Up X3
    [Documentation]   ***Owner :Nut***
    ...
    ...    - Status : Active
    ...
    ...    *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    2. เลือก Tab "เน็ตเต็มสปีด " (2)   
    ...    3. Capture Screen
    ...    
    ...
    ...    *** Expect Result ***    
    ...    แสดงข้อความ "*พิเศษ เฉพาะวันที่ 25-31 ส.ค. 63 รับเน็ตเพิ่ม 3เท่า จาก 5GB เป็น 15GB*" (2) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Verify Wording Under Package Max Speed Internet Up X3
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

#(F6_WEB_2_1_Y_2_110) Verified Wording Menu InternetNonStop
(F6_WEB_2_1_Y_2_111) Verified Wording Menu Special Internet Refill Package
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตราคาพิเศษ (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     ** แพ็กเกจเสริมราคาพิเศษ สำหรับลูกค้าที่มีแพ็กเน็ตแบบใช้งานต่อเนื่อง (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Special Internet
    Verify Wording Under Package Special Internet Refill Package
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F6_WEB_2_1_Y_2_112) Register Package Banner
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. กดสมัครแพ็กเกจจาก Banner (1)
    ...     3. Cap Screen
    ...     4. กด "ยืนยัน"
    ...     5. กรอกหมายเลขโทรศัพท์ / กรอกรหัส OTP (2)
    ...     6. Cap Screen
    ...     7. กด "ตกลง"
    ...     8. แสดงข้อความ Success / Error (3)
    ...     9. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ : Mao Mao Voice 200 นาที 49 บาท 3 วัน (1)
    ...     แสดงหมายเลขโทรศัพท์ / รหัส OTP (2)
    ...     แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Register Package Banner Mao Mao Voice
    #Verify Package Banner Mao Mao Voice    200Min    29Baht    1Day    
    Verify Package Banner Mao Mao Voice    200Min    49Baht    3Day
    #Verify Package Banner Mao Mao Voice    200Min    79Baht    7Day 
    #Verify Message Result    ${number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
