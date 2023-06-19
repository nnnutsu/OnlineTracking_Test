*** Settings ***
Resource          Resource/PageKeywords/CalendarPackageFixCase.robot
Resource          Resource/PageKeywords/Common.robot

*** Test Cases ***
# ตรวจสอบ Wording Tab Menu
(F6_WEB_2_1_Y_2_109) Verify Wording Tab Menu: Max Speed Internet
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording  เมนู Tab : เน็ตเต็มสปีด 
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package (1)
    ...     2. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "เน็ตเต็มสปีด " (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    MaxSpeedInternet
    Verify Wording Tab Menu    MaxSpeedInternet
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}  

(F6_WEB_2_1_Y_2_110) Verify Wording Tab Menu: Special Internet Refill Package 
    [Documentation]     ***Owner : Gun***
    ...     
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. คลิกแท็บ : เน็ตสุดคุ้ม (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "เน็ตสุดคุ้ม" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verify Wording Tab Menu    SpecialInternetRefillPackage
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}  

(F6_WEB_2_1_Y_2_111) Verify Wording Tab Menu: Internet Non-Stop
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording  เมนู Tab : เน็ตสุดคุ้ม (อินเทอร์เน็ต Non-Stop)
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. คลิกแท็บ : เน็ตสุดคุ้ม (อินเทอร์เน็ต Non-Stop) (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "อินเทอร์เน็ต Non-Stop" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verify Wording Tab Menu    InternetNonStop
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F6_WEB_2_1_Y_2_112) Verify Wording Tab Menu: Up Speed Internet
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording  เมนู Tab : เน็ตสุดคุ้ม (อินเทอร์เน็ตอัพสปีด)
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. คลิกแท็บ :  เน็ตสุดคุ้ม (อินเทอร์เน็ตอัพสปีด) (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "อินเทอร์เน็ตอัพสปีด" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verify Wording Tab Menu    UpSpeedInternet
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F6_WEB_2_1_Y_2_113) Verify Wording Tab Menu: Internet Packages To Friend
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording  เมนู Tab : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. คลิกแท็บ :  เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน) (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "สมัครเน็ตให้เพื่อน" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verify Wording Tab Menu    InternetPackagesToFriend
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

(F6_WEB_2_1_Y_2_114) Verify Wording Tab Menu: Entertainment
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording  เมนู Tab : Entertainment 
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. คลิกแท็บ : Entertainment  (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "Entertainment" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    Entertainment
    Verify Wording Tab Menu    EntertainmentPackages
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name} 

# ตรวจสอบ Wording ใต้ตาราง
(F6_WEB_2_1_Y_2_115) Verified Wording Under Table: Max Speed Internet Down X3
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording เมนู : เน็ตเต็มสปีด Down X3
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
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    MaxSpeedInternet
    Verified Wording Under Table Max Speed Internet Down X3
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_116) Verified Wording Under Table: Max Speed Internet Up X3
    [Documentation]   ***Owner :Gun***
    ...     ตรวจสอบ Wording เมนู : เน็ตเต็มสปีด Up X3
    ...    - Status : Active
    ...
    ...    *** Description ***
    ...     1. เข้าลิ้ง : stg.m.ais.co.th/ontop-package
    ...    4. เลือก Tab "เน็ตเต็มสปีด " (2)   
    ...    5. Capture Screen
    ...    
    ...
    ...    *** Expect Result ***    
    ...    แสดงข้อความ "*พิเศษ เฉพาะวันที่ 16-22 ก.ค. 63 รับเน็ตเพิ่ม 3เท่า จาก 5GB เป็น 15GB*" (2) 
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    MaxSpeedInternet
    Verified Wording Under Table Max Speed Internet Up X3
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_117) Verify Wording Under Table: Up Speed Internet
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording เมนู : อินเทอร์เน็ตอัพสปีด
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "** แพ็กเกจเสริมราคาพิเศษ สำหรับลูกค้าที่มีแพ็กเน็ตแบบใช้งานต่อเนื่อง" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verify Wording Under Table Up Speed Internet
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

# ตรวจสอบ Wording ปริมาณเน็ต ที่หัวข้อตาราง
(F6_WEB_2_1_Y_2_118) Verified Wording Volume Internet: Max Speed Internet Down X3
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording ปริมาณเน็ต : เน็ตเต็มสปีด Down X3
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตเต็มสปีด (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "ปริมาณ, 100 MB, 200 MB, 600 MB, 1 GB, 1.5 GB, 2 GB, 3 GB, 4 GB, 5 GB, 8 GB"  (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    MaxSpeedInternet
    Verified Wording Volume Max Speed Internet Down X3
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_119) Verified Wording Volume Internet: Max Speed Internet Up X3
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording ปริมาณเน็ต : เน็ตเต็มสปีด Up X3
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตเต็มสปีด (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "ปริมาณ, 100 MB, 200 MB, 600 MB, 1 GB, 1.5 GB, 2 GB, 3 GB, 4 GB, 8 GB, 15 GB"  (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    MaxSpeedInternet
    Verified Wording Volume Max Speed Internet Up X3
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_120) Verified Wording Volume Internet: Internet Non-Stop
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording ปริมาณเน็ต :  เน็ตสุดคุ้ม (อินเทอร์เน็ต Non-Stop)
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (อินเทอร์เน็ต Non-Stop) (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "จำนวนวัน, 512 kbps, 1 Mbps, 4 Mbps, 6 Mbps, 10 Mbps"  (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verified Wording Volume Internet Non-Stop
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_121) Verified Wording Volume Internet: Up Speed Internet 7 Days
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording ปริมาณเน็ต :เน็ตสุดคุ้ม (อินเทอร์เน็ตอัพสปีด  7 วัน)
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (อินเทอร์เน็ตอัพสปีด  7 วัน) (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "1 GB, 2 GB, 3 GB, 4 GB, 5 GB"  (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verified Wording Volume Up Speed Internet 7 Days
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_122) Verified Wording Volume Internet: Up Speed Internet 15 Days
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording ปริมาณเน็ต : เน็ตสุดคุ้ม (อินเทอร์เน็ตอัพสปีด15 วัน)
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (อินเทอร์เน็ตอัพสปีด) (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "6 GB, 7 GB, 8 GB, 9 GB, 10GB" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verified Wording Volume Up Speed Internet 15 Days
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_123) Verified Wording Volume Internet: Internet Packages To Friend
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording ปริมาณเน็ต :เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน) (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "อินเทอร์เน็ต, เร็ว 1 Mbps, เร็ว 4 Mbps, เร็ว 6 Mbps, เต็มสปีด 5 GB"  (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verified Wording Volume Internet Packages To Friend
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

# ตรวจสอบ Wording ปริมาณวัน ที่หัวข้อตาราง
(F6_WEB_2_1_Y_2_124) Verified Wording Days Internet: Max Speed Internet
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording ปริมาณวัน : เน็ตเต็มสปีด
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตเต็มสปีด (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "จำนวนวัน,1 วัน, 3 วัน, 7 วัน, 30 วัน" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    MaxSpeedInternet
    Verified Wording Days Max Speed Internet
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_125) Verified Wording Days Internet: Internet Non-Stop
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording ปริมาณวัน : เน็ตสุดคุ้ม (อินเทอร์เน็ต Non-Stop)
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู :เน็ตสุดคุ้ม (อินเทอร์เน็ต Non-Stop) (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "จำนวนวัน, 1 วัน, 7 วัน, 30 วัน" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verified Wording Days Internet Non-Stop
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_126) Verified Wording Days Internet: Up Speed Internet 7 Days
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording ปริมาณวัน : เน็ตสุดคุ้ม (อินเทอร์เน็ตอัพสปีด  7 วัน)
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (อินเทอร์เน็ตอัพสปีด 7 วัน) (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "จำนวนวัน, 7 วัน" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verified Wording 7 Days Up Speed Internet 
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_127) Verified Wording Days Internet: Up Speed Internet 15 Days
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording ปริมาณวัน : เน็ตสุดคุ้ม (อินเทอร์เน็ตอัพสปีด15 วัน)
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (อินเทอร์เน็ตอัพสปีด15 วัน) (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "จำนวนวัน, 15 วัน" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verified Wording 15 Days Up Speed Internet 
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_128) Verified Wording Days Internet: Internet Packages To Friend
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบ Wording ปริมาณวัน : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู :เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน) (1)
    ...     3. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงข้อความ "จำนวนวัน,1 วัน, 7 วัน, 30 วัน" (1)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verified Wording Days Internet Packages To Friend
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

# ตรวจสอบปุ่ม "ย้อนกลับ" / "ยกเลิก"
(F6_WEB_2_1_Y_2_129) Verified Button Package: Max Speed Internet
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบปุ่ม "ย้อนกลับ" : เน็ตเต็มสปีด 100 MB 9 บาท 1 วัน
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package 
    ...     2. เลือกแพ็กเกจ : 100 MB 9 บาท 1 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ย้อนกลับ" (2)
    ...     6. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     แสดงแพ็กเกจ 100 MB 9 บาท 1 วัน (1)
    ...     แสดงหน้าเมนู Tab เน็ตเต็มสปีด (2)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    MaxSpeedInternet
    Verified Button Package Max Speed Internet    100MB    9Baht    1Day
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_130) Verified Button Package: Internet Non-Stop
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบปุ่ม "ย้อนกลับ" : เน็ตสุดคุ้ม (อินเทอร์เน็ต Non-Stop) 512 kbps 22 บาท 1 วัน
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (อินเทอร์เน็ต Non-Stop)
    ...     3. เลือกแพ็กเกจ : 512 kbps 22 บาท 1 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ย้อนกลับ" (2)
    ...     6. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     512 kbps 22 บาท 1 วัน (1)
    ...     แสดงหน้าเมนู Tab เน็ตสุดคุ้ม (2)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verified Button Package Internet Non Stop    512kbps    22Baht    1Day
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_131) Verified Button Package: Up Speed Internet
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบปุ่ม "ย้อนกลับ" : เน็ตสุดคุ้ม (อินเทอร์เน็ตอัพสปีด) 1 GB 39 บาท 7 วัน
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : https://m.ais.co.th/ontop-package-myais?appName=eserviceapp 
    ...     2. เลือกเมนู : เน็ตสุดคุ้ม (อินเทอร์เน็ตอัพสปีด)
    ...     3. เลือกแพ็กเกจ : 1 GB 39 บาท 7 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ย้อนกลับ" (2)
    ...     6. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     1 GB 39 บาท 7 วัน (1)
    ...     แสดงหน้าเมนู Tab เน็ตสุดคุ้ม (2)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verified Button Package Up Speed Internet    1GB    39Baht    7Day
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_132) Verified Button Package: Internet Packages To Friend
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบปุ่ม "ย้อนกลับ" : เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน) 1 Mbps 25 บาท 1 วัน
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     . เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู :เน็ตสุดคุ้ม (สมัครเน็ตให้เพื่อน)
    ...     3. เลือกแพ็กเกจ : 1 Mbps 25 บาท 1 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ย้อนกลับ" (2)
    ...     6. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     1 Mbps 25 บาท 1 วัน (1)
    ...     แสดงหน้าเมนู Tab เน็ตสุดคุ้ม (2)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    SpecialInternetRefillPackage
    Verified Button Package Internet Packages To Friend    1Mbps    25Baht    1Day
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}

(F6_WEB_2_1_Y_2_133) Verified Button Package: Entertainment
    [Documentation]     ***Owner : Gun***
    ...     ตรวจสอบปุ่ม "ย้อนกลับ" : Entertainment VIU PREMIUM 7 วัน
    ...     Status : Active
    ...     Ntype : Postpaid
    ...
    ...     1. เข้าลิ้ง : stg-m.ais.co.th/ontop-package
    ...     2. เลือกเมนู : Entertainment
    ...     3. เลือกแพ็กเกจ : VIU PREMIUM 7 วัน (1)
    ...     4. Cap Screen
    ...     5. กด "ย้อนกลับ" (2)
    ...     6. Cap Screen
    ...
    ...     *** Expect Result ***
    ...     VIU PREMIUM 7 วัน  (1)
    ...     แสดงหน้าเมนู Tab เน็ตสุดคุ้ม (2)
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_OnlineTracking_Test_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Tab Menu    Entertainment
    Verified Button Package Entertainment VIU
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}
    
# ตรวจสอบแพ็กเกจจาก Banner
(F6_WEB_2_1_Y_2_134) Register Package Banner
    [Documentation]     ***Owner : Gun***
    ...     สมัครแพ็กเกจจาก Banner
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
    Open WebMobile Online Tracking     ${virtual_device_1_SN}    ${virtual_device_1_IPChromeDriver}
    Select Register Package Banner Mao Mao Voice
    #Verify Package Banner Mao Mao Voice    200Min    29Baht    1Day    
    Verify Package Banner Mao Mao Voice    200Min    49Baht    3Day
    #Verify Package Banner Mao Mao Voice    200Min    79Baht    7Day 
    # Verify Message Result    ${number}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    [Teardown]    Keywords For Teardown WebMobile    ${#dict_device_name}   