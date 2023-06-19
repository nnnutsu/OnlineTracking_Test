*** Settings ***
Resource          Resource/PageKeywords/CalendarPackageMaxSpeed.robot

*** Test Cases ***
(F1_WEB_2_1_Y_2_1) Register Package Internet 15GB 75Baht 1Day 
    [Documentation]   ***Owner :Nut***
    ...
    ...    - Status : Active
    ...    - Ntype : Postpaid (3PO)
    ...
    ...    *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    7. เลือก Tab "เน็ตเต็มสปีด"
    ...    8. สมัครแพ็คเกจ "อินเทอร์เน็ต 15 GB 75 บาท 1 วัน" (4)
    ...    9. Cap Screen
    ...    10. กด "ยืนยัน" (5)
    ...    11. Cap Screen 
    ...
    ...    *** Expect Result ***    
    ...    แสดงหน้าหลัก (1)
    ...    แสดงรายการแพ็กเกจ (2)
    ...    แสดงหน้าแพ็กเกจเสริมอินเทอร์เน็ต (3)
    ...    Package : อินเทอร์เน็ต 15 GB 75 บาท 1 วัน (4)
    ...    แสดงหน้าขอบคุณที่แสดงผลลัพธ์ SUCCESS หรือ ERROR (5)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package Net Full Speed X3    15GB    75Baht    1Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_2_1_Y_2_2) Register Package Internet 15GB 105Baht 3Day 
    [Documentation]   ***Owner :Nut***
    ...
    ...    - Status : Active
    ...    - Ntype : Postpaid (3PO)
    ...
    ...    *** Description ***
    ...     1. เข้าลิ้ง :  stg.m.ais.co.th/ontop-package
    ...    7. เลือก Tab "เน็ตเต็มสปีด"
    ...    8. สมัครแพ็คเกจ "อินเทอร์เน็ต 15 GB 105 บาท 3 วัน" (4)
    ...    9. Cap Screen
    ...    10. กด "ยืนยัน" (5)
    ...    11. Cap Screen 
    ...
    ...    *** Expect Result ***    
    ...    แสดงหน้าหลัก (1)
    ...    แสดงรายการแพ็กเกจ (2)
    ...    แสดงหน้าแพ็กเกจเสริมอินเทอร์เน็ต (3)
    ...    Package : อินเทอร์เน็ต 15 GB 105 บาท 3 วัน (4)
    ...    แสดงหน้าขอบคุณที่แสดงผลลัพธ์ SUCCESS หรือ ERROR (5)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package Net Full Speed X3    15GB    105Baht    3Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_2_1_Y_2_3) Register Package Internet 15GB 150Baht 7Day 
    [Documentation]   ***Owner :Nut***
    ...
    ...    - Status : Active
    ...    - Ntype : Postpaid (3PO)
    ...
    ...    *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    7. เลือก Tab "เน็ตเต็มสปีด"
    ...    8. สมัครแพ็คเกจ "อินเทอร์เน็ต 15 GB 150 บาท 7 วัน" (4)
    ...    9. Cap Screen
    ...    10. กด "ยืนยัน" (5)
    ...    11. Cap Screen 
    ...
    ...    *** Expect Result ***    
    ...    แสดงหน้าหลัก (1)
    ...    แสดงรายการแพ็กเกจ (2)
    ...    แสดงหน้าแพ็กเกจเสริมอินเทอร์เน็ต (3)
    ...    Package : อินเทอร์เน็ต 15 GB 150 บาท 7 วัน (4)
    ...    แสดงหน้าขอบคุณที่แสดงผลลัพธ์ SUCCESS หรือ ERROR (5)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package Net Full Speed X3    15GB    150Baht    7Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_2_1_Y_2_4) Register Package Internet 15GB 488Baht 30Day 
    [Documentation]   ***Owner :Nut***
    ...
    ...    - Status : Active
    ...    - Ntype : Postpaid (3PO)
    ...
    ...    *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    7. เลือก Tab "เน็ตเต็มสปีด"
    ...    8. สมัครแพ็คเกจ "อินเทอร์เน็ต 15 GB 488 บาท 30 วัน" (4)
    ...    9. Cap Screen
    ...    10. กด "ยืนยัน" (5)
    ...    11. Cap Screen 
    ...
    ...    *** Expect Result ***    
    ...    แสดงหน้าหลัก (1)
    ...    แสดงรายการแพ็กเกจ (2)
    ...    แสดงหน้าแพ็กเกจเสริมอินเทอร์เน็ต (3)
    ...    Package : อินเทอร์เน็ต 15 GB 75 บาท 1 วัน (4)
    ...    แสดงหน้าขอบคุณที่แสดงผลลัพธ์ SUCCESS หรือ ERROR (5)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open Browser Online Tracking    ${virtual_device_1_SN}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1}
    Select Tab Max Speed Internet
    Register Package Net Full Speed X3    15GB    488Baht    30Day
    Verify Submitted Request Via Wifi or Data    ${Number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Comment    Verify SMS After Register Package    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F1_WEB_2_1_Y_2_5) Check Wording Tab Max Speed Internet Up X3
    [Documentation]   ***Owner :Nut***
    ...
    ...    - Status : Active
    ...
    ...    *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "เน็ตเต็มสปีด " (2)   
    ...    5. Capture Screen
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
