*** Variables ***
${lblInternet100MB9Baht1Day}    name=9
${lblInternet200MB15Baht1Day}    name=15
${lblInternet600MB20Baht1Day}    name=20
${lblInternet1GB35Baht1Day}    name=35
${lblInternet1GB65Baht3Day}    name=65
${lblInternet1GB99Baht7Day}    xpath=(//XCUIElementTypeStaticText[@name="99"])[1]
${lblInternet1GB199Baht30Day}    xpath=(//XCUIElementTypeStaticText[@name="199"])[1]
${lblInternet1.5GB39Baht1Day}    name=39
${lblInternet1.5GB69Baht3Day}    xpath=(//XCUIElementTypeStaticText[@name="69"])[1]
${lblInternet1.5GB109Baht7Day}    name=109
${lblInternet1.5GB229Baht30Day}    name=229
${lblInternet2GB45Baht1Day}    name=45
${lblInternet2GB75Baht3Day}    xpath=(//XCUIElementTypeStaticText[@name="75"])[1]
${lblInternet2GB115Baht7Day}    name=115
${lblInternet2GB239Baht30Day}    name=239
${lblInternet3GB49Baht1Day}    name=49
${lblInternet3GB79Baht3Day}    name=79
${lblInternet3GB119Baht7Day}    name=119
${lblInternet3GB399Baht30Day}    name=399
${lblInternet4GB69Baht1Day}    xpath=(//XCUIElementTypeStaticText[@name="69"])[2]
${lblInternet4GB99Baht3Day}    xpath=(//XCUIElementTypeStaticText[@name="99"])[2]
${lblInternet4GB135Baht7Day}    name=135
${lblInternet4GB450Baht30Day}    name=450
${lblInternet5GB75Baht1Day}    xpath=(//XCUIElementTypeStaticText[@name="75"])[2]
${lblInternet5GB105Baht3Day}    name=105
${lblInternet5GB150Baht7Day}    name=150
${lblInternet5GB488Baht30Day}    name=488
${lblInternet8GB89Baht1Day}    name=89
${lblInternet8GB149Baht3Day}    name=149
${lblInternet8GB199Baht7Day}    xpath=(//XCUIElementTypeStaticText[@name="199"])[2]
${lblInternet8GB599Baht30Day}    name=599
${lblInternetSize8GBLine1}    xpath=//XCUIElementTypeStaticText[@name="อินเทอร์เน็ต NEXT G/4G/3G" or @name="Internet NEXT G /4G/3G"]
${lblInternetSize8GBLine2}    xpath=//XCUIElementTypeStaticText[@name="8GB"]
${lblInternetSize8GBLine3}    xpath=//XCUIElementTypeStaticText[@name="WiFi"]
${lblInternetSize8GBLine4}    xpath=//XCUIElementTypeStaticText[@name="AIS SUPER WiFi ไม่จำกัด" or @name="Unlimited AIS SUPER WiFi"]

#Net Full Speed X3
${lblInternet15GB75Baht1Day}    xpath=(//XCUIElementTypeStaticText[@name="75"])[2]
${lblInternet15GB105Baht3Day}    name=105
${lblInternet15GB150Baht7Day}    name=150
${lblInternet15GB488Baht30Day}    name=488
${lblInternetSpeedX3}    xpath=//XCUIElementTypeStaticText[@name="เน็ตเต็มสปีด X3" or @name="Net Full Speed X3"]
${lblDesInternetSpeedX3}    xpath=//XCUIElementTypeStaticText[@name="*พิเศษ เฉพาะวันที่ 25-31 ส.ค. 63 รับเน็ตเพิ่ม 3เท่า จาก 5GB เป็น 15GB*" or @name="*Special period 25-31 Aug 20, get internet triple usage from 5GB to 15GB*"]
${lblGetInternetTriple15GB}    xpath=//XCUIElementTypeStaticText[@name="* รับเน็ตเพิ่ม 3 เท่า จาก 5GB เป็น 15GB" or @name="* Get internet triple usage from 5GB to 15GB"]
${lblSubscribePeriod}    xpath=//XCUIElementTypeStaticText[@name="** สมัครได้ตั้งแต่วันที่ 25-31 ส.ค. 2563 เท่านั้น" or @name="** Subscribe period 25-31 Aug 2020"]