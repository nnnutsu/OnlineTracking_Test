*** Variables ***
###iOS
${txtInputURL}    	xpath=//XCUIElementTypeTextField[@name="URL"]   #name=URL
${txtInputEditURL}      xpath=//*[@name="URL"]
${btnCancelEditUrl}    xpath=//XCUIElementTypeButton[@name="Cancel" or @name="ยกเลิก"]
${ddlSum}       id=sum
${btnDoneOnKeyboard}       //*[@name="Done" or @name="เสร็จสิ้น"]
${btnPopupCancelSubmit}    xpath=(//XCUIElementTypeButton[@name="Cancel"])[2]
${btnTabBrowser}    //XCUIElementTypeButton[@name="Tabs" or @name="แถบ"]
${btnAddTabSafari}    xpath=//XCUIElementTypeButton[@name="AddTabButton"]
${btnFirstTabSafari}    xpath=//XCUIElementTypeButton[@name="Favorites" or @name="รายการโปรด"]
${btnBottomBack}    xpath=//XCUIElementTypeButton[@name="Back"]
${btnBackToMainTab}    xpath=(//XCUIElementTypeButton[@name="AIS Privilege | สิทธิพิเศษหลากหลายที่ เอไอเอส คัดสรรมาเพื่อทุกไลฟ์สไตล์ของคุณ"])[1]

###หน้าRegisterOTP
${txtInputMobileNo}    xpath=//XCUIElementTypeTextField
${btnRequestPassword}    xpath=//XCUIElementTypeButton[@name="รับรหัสผ่าน" or @name="Request Password"]
#${txtInputOTP}    xpath=//*[@id="otp"]
${txtInputOTP}    xpath=//XCUIElementTypeOther[@name="AIS"]/XCUIElementTypeTextField[2]
#${btnOK}          xpath=//*[@id="login"]
${btnOK}    //XCUIElementTypeButton[@name="ตกลง" or @name="OK"]
${lblLogin}       xpath=//XCUIElementTypeStaticText[@name=" ล็อกอิน" or @name=" Login"]
${lblMobileNumber}    xpath=//XCUIElementTypeStaticText[@name="หมายเลขโทรศัพท์" or @name="Telephone number"]
#${lblMessageYourRequestHasBeenSubmitted}    xpath=//*[@id="text-html" or @class="text-center word-wraps"]
${lblMessageYourRequestHasBeenSubmitted}    //XCUIElementTypeOther[@name="ais.co.th"]/XCUIElementTypeOther[3]
${btnLanguageThRegister}    name=TH
${btnLanguageEnRegister}    name=EN
##Ontop-Package
${lblHeaderOnTopPackage}    //XCUIElementTypeStaticText[@name="แพ็กเกจเสริม อินเทอร์เน็ต" or @name="On-Top Package"]    # แพ็กเกจเสริม อินเทอร์เน็ต
${btnLanguageTH}    name=TH
${btnLanguageEN}    name=EN
${MnuTabNetMaxSpeed}    //XCUIElementTypeStaticText[@name="เน็ตเต็มสปีด" or @name="Max Speed Internet"]
${MnuTabSpecialInternet}    //XCUIElementTypeStaticText[@name="เน็ตสุดคุ้ม" or @name="Special Internet Refill Package"]
${MnuTabEntertainment}    //XCUIElementTypeStaticText[@name="Entertainment"]
${lblInternet}    //XCUIElementTypeStaticText[@name="อินเทอร์เน็ต" or @name="Internet"]
${lblInternetSize}    //XCUIElementTypeStaticText[@name="100 MB"]
#${lblPackPrice}    xpath=(//XCUIElementTypeStaticText[@name="9"])[2]
#${lblBaht}    //XCUIElementTypeOther[@name="On-Top Package 3g /4g แพ็กเสริมเน็ตเลือกง่ายๆ ช่วยค้นหาแพ็กเสริมเน็ตที่ใช่สะดวก ง่าย รวดเร็ว"]/XCUIElementTypeOther[14]/XCUIElementTypeOther
#${lblPackDate}    (//XCUIElementTypeStaticText[@name="1"])[2]
#${lblDay}     //XCUIElementTypeOther[@name="วัน" or @name="day"]
#${btnConfirm}     xpath=(//XCUIElementTypeStaticText[@name="ยืนยัน"])[3]


#Verify Result Message Success Error
${lblMessageYourRequestHasBeenSubmittedTH}    xpath=//*[@name="ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ"]
${lblMessageYourRequestHasBeenSubmittedEN}    xpath=//*[@name="Your request has been submitted. Please wait for confirmation SMS shortly.]
${lblMessageRegisterSuccessTH}    xpath=//*[@name="ระบบสมัครรายการเรียบร้อยแล้ว]
${lblMessageRegisterSuccessEN}    xpath=//*[@name="Register Success]
${lblMessageYourRequestHasBeenSubmittedNetGiftTH}    xpath=//*[@name="ระบบกำลังดำเนินการกรุณารอ SMS ยืนยันการส่งเน็ตกิฟต์ให้เพื่อนของคุณ]
${lblMessageYourRequestHasBeenSubmittedNetGiftEN}    xpath=//*[@name="Your request "Net Gift" has been submitted. Please wait for a confirmation SMS shortly.]
#${MessageRegisterEntertainmentTH}    ระบบกำลังตรวจสอบข้อมูล กรุณารอรับข้อความแจ้งสิทธิ์แพ็กเกจของท่านค่ะ หากสมัครเรียบร้อยแล้ว คุณสามารถเข้ารับชม ความบันเทิงระดับโลกผ่าน APP AIS PLAY
#${MessageRegisterEntertainmentTH_1}    ระบบกำลังตรวจสอบข้อมูล กรุณารอรับข้อความแจ้งสิทธิ์แพ็กเกจของท่านค่ะ
${lblMessageRegisterEntertainmentTH}    รxpath=//*[@name="ระบบกำลังตรวจสอบข้อมูล กรุณารอรับข้อความแจ้งสิทธิ์แพ็กเกจของท่านค่ะ.*"]

#${lblSorryPleaseTryLater}    xpath=//*[@name="ขออภัยค่ะ กรุณาสมัครผ่าน AIS Call Center 1175 ค่ะ"]
${lblSorryPleaseTryLater}    xpath=//*[@name="ขออภัยค่ะ ไม่สามารถทำรายการได้ในขณะนี้ กรุณาทำรายการใหม่ภายหลังค่ะ]    