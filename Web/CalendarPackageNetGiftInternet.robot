*** Settings ***
Resource          Resource/PageKeywords/CalendarPackageSpecialInternet.robot

*** Test Cases ***
(F4_WEB_2_1_Y_2_58) Send To Friend 1Mbps 25Baht 1Day : Prepaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    25Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_59) Send To Friend 1Mbps 25Baht 1Day : Prepaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    25Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_60) Send To Friend 1Mbps 25Baht 1Day : Postpaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    25Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_61) Send To Friend 1Mbps 25Baht 1Day : Postpaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    25Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_62) Send To Friend 1Mbps 120Baht 7Days : Prepaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 120 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    120Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_63) Send To Friend 1Mbps 120Baht 7Days : Prepaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 120 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    120Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_64) Send To Friend 1Mbps 120Baht 7Days : Postpaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 120 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    120Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_65) Send To Friend 1Mbps 120Baht 7Days : Postpaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 120 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    120Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_66) Send To Friend 1Mbps 350Baht 30Days : Prepaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 350 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    350Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_67) Send To Friend 1Mbps 350Baht 30Days : Prepaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 350 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    350Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_68) Send To Friend 1Mbps 350Baht 30Days : Postpaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 350 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    350Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_69) Send To Friend 1Mbps 350Baht 30Days : Postpaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 350 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    1Mbps    350Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_70) Send To Friend 4Mbps 32Baht 1Day : Prepaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 4 Mbps 32 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    4Mbps    32Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_71) Send To Friend 4Mbps 32Baht 1Day : Prepaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 4 Mbps 32 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    4Mbps    32Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_72) Send To Friend 4Mbps 32Baht 1Day : Postpaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 4 Mbps 32 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    4Mbps    32Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_73) Send To Friend 4Mbps 32Baht 1Day : Postpaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 4 Mbps 32 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    4Mbps    32Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_74) Send To Friend 4Mbps 220Baht 7Days : Prepaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 4 Mbps 220 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    4Mbps    220Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_75) Send To Friend 4Mbps 220Baht 7Days : Prepaid to Postpaid 
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 4 Mbps 220 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    4Mbps    220Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_76) Send To Friend 4Mbps 220Baht 7Days : Postpaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 4 Mbps 220 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    4Mbps    220Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_77) Send To Friend 4Mbps 220Baht 7Days : Postpaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 4 Mbps 220 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    4Mbps    220Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_78) Send To Friend 4Mbps 650Baht 30Days : Prepaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 4 Mbps 650 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    4Mbps    650Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_79) Send To Friend 4Mbps 650Baht 30Days : Prepaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 4 Mbps 650 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    4Mbps    650Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_80) Send To Friend 4Mbps 650Baht 30Days : Postpaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 4 Mbps 650 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    4Mbps    650Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_81) Send To Friend 4Mbps 650Baht 30Days : Postpaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 4 Mbps 650 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    4Mbps    650Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_82) Send To Friend 6Mbps 45Baht 1Day : Prepaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 6 Mbps 45 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    6Mbps    45Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_83) Send To Friend 6Mbps 45Baht 1Day : Prepaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 6 Mbps 45 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    6Mbps    45Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_84) Send To Friend 6Mbps 45Baht 1Day : Postpaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 6 Mbps 45 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    6Mbps    45Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_85) Send To Friend 6Mbps 45Baht 1Day : Postpaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 6 Mbps 45 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    6Mbps    45Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_86) Send To Friend 6Mbps 270Baht 7Days : Prepaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 6 Mbps 270 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    6Mbps    270Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_87) Send To Friend 6Mbps 270Baht 7Days : Prepaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 6 Mbps 270 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    6Mbps    270Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_88) Send To Friend 6Mbps 270Baht 7Days : Postpaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 6 Mbps 270 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    6Mbps    270Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_89) Send To Friend 6Mbps 270Baht 7Days : Postpaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 6 Mbps 270 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    6Mbps    270Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_90) Send To Friend 6Mbps 850Baht 30Days : Prepaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 6 Mbps 850 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    6Mbps    850Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_91) Send To Friend 6Mbps 850Baht 30Days : Prepaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 6 Mbps 850 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    6Mbps    850Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_92) Send To Friend 6Mbps 850Baht 30Days : Postpaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 6 Mbps 850 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    6Mbps    850Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_93) Send To Friend 6Mbps 850Baht 30Days : Postpaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 6 Mbps 850 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet    6Mbps    850Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_94) Send To Friend 5GB 75Baht 1Day : Prepaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 5 GB 75 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet 5GB    5GB    75Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_95) Send To Friend 5GB 75Baht 1Day : Prepaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 5 GB 75 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet 5GB    5GB    75Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_96) Send To Friend 5GB 75Baht 1Day : Postpaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 5 GB 75 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet 5GB    5GB    75Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_97) Send To Friend 5GB 75Baht 1Day : Postpaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 5 GB 75 บาท 1 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet 5GB    5GB    75Baht    1Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_98) Send To Friend 5GB 150Baht 7Days : Prepaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 5 GB 150 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet 5GB    5GB    150Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_99) Send To Friend 5GB 150Baht 7Days : Prepaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 5 GB 150 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet 5GB    5GB    150Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_100) Send To Friend 5GB 150Baht 7Days : Postpaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 5 GB 150 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet 5GB    5GB    150Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_101) Send To Friend 5GB 150Baht 7Days : Postpaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 5 GB 150 บาท 7 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet 5GB    5GB    150Baht    7Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_102) Send To Friend 5GB 488Baht 30Days : Prepaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 5 GB 488 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet 5GB    5GB    488Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_103) Send To Friend 5GB 488Baht 30Days : Prepaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 5 GB 488 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PE
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet 5GB    5GB    488Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_104) Send To Friend 5GB 488Baht 30Days : Postpaid to Postpaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 5 GB 488 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PO
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet 5GB    5GB    488Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

(F4_WEB_2_1_Y_2_105) Send To Friend 5GB 488Baht 30Days : Postpaid to Prepaid
    [Documentation]     ***Owner : Nut***
    ...
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 5 GB 488 บาท 30 วัน
    ...     4. กรอกหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...     5. Cap Screen
    ...     6. กด "ยืนยัน"
    ...     7. กรอกหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...     8. Cap Screen
    ...     9. กด "ตกลง"
    ...     10. แสดงข้อความ Success / Error (3)
    ...     11. Cap Screen
    ...
    ...     *** Expect Result ***
    ...    แสดงหมายเลขโทรศัพท์ผู้รับแพ็กเกจ (1)
    ...    แสดงหมายเลขโทรศัพท์ผู้ส่งแพ็กเกจ / กรอกรหัส OTP (2)
    ...    แสดงข้อความ "" (3)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    3PO
    ${Friend_Number}    Get From Dictionary    ${virtual_device_1_Number_b}    3PE
    Open Browser Online Tracking    ${virtual_device_1_IPSelenium}
    Select Tab Special Internet
    Select Package NetGift Internet 5GB    5GB    488Baht    30Day
    Input Friend Mobile Number    ${Friend_Number} 
    Login Calendar Ontop    ${Number}
    Input OTP    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Verify Result Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

