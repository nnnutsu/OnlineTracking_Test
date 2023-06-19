*** Variables ***
${lblInternetSpeed}    xpath=//*[@id="box_netspeed"]/span
${lblInternetSecondSpeed}    xpath=//XCUIElementTypeOther[14]/XCUIElementTypeStaticText
${lblPackPriceNonStop}    xpath=//XCUIElementTypeOther[15]/XCUIElementTypeStaticText
#Internet Non-Stop_1Day
${lblInternet512Kbps22Baht1Day}    name=22
${lblInternet1Mbps25Baht1Day}    xpath=(//XCUIElementTypeStaticText[@name="25"])[1]
${lblInternet4Mbps32Baht1Day}    xpath=(//XCUIElementTypeStaticText[@name="32"])[1]
${lblInternet6Mbps45Baht1Day}    xpath=(//XCUIElementTypeStaticText[@name="45"])[1]
${lblInternet10Mbps55Baht1Day}    name=55
#Internet Non-Stop_7Day
${lblInternet512Kbps99Baht7Day}    xpath=(//XCUIElementTypeStaticText[@name="99"])[1]
${lblInternet1Mbps120Baht7Day}    xpath=(//XCUIElementTypeStaticText[@name="120"])[1]
${lblInternet4Mbps220Baht7Day}    xpath=(//XCUIElementTypeStaticText[@name="220"])[1]
${lblInternet6Mbps270Baht7Day}    xpath=(//XCUIElementTypeStaticText[@name="270"])[1]
${lblInternet1Mbps330Baht7Day}    xpath=(//XCUIElementTypeStaticText[@name="330"])[1]
#Internet Non-Stop_30Day
${lblInternet512Kbps321Baht30Day}    name=321
${lblInternet1Mbps350Baht30Day}    xpath=(//XCUIElementTypeStaticText[@name="350"])[1]
${lblInternet4Mbps650Baht30Day}    xpath=(//XCUIElementTypeStaticText[@name="650"])[1]
${lblInternet6Mbps850Baht30Day}    xpath=(//XCUIElementTypeStaticText[@name="850"])[1]
${lblInternet10Mbps1100Baht30Day}    name=1,100

#Up Speed Internet_7Day
${lblInternet1GB39Baht7Day}    xpath=//XCUIElementTypeStaticText[@name="39"]
${lblInternet2GB49Baht7Day}    name=49
${lblInternet3GB79Baht7Day}    name=79
${lblInternet4GB89Baht7Day}    name=89
${lblInternet5GB99Baht7Day}    xpath=(//XCUIElementTypeStaticText[@name="99"])[2]
#Up Speed Internet_15Day
${lblInternet6GB149Baht15Day}    name=149
${lblInternet7GB159Baht15Day}    name=159
${lblInternet8GB179Baht15Day}    name=179
${lblInternet9GB189Baht15Day}    name=189
${lblInternet10GB199Baht15Day}    name=199


#Send Internet Package To Friend_1Day
#${lblInternetUnlimited}    xpath=//*[@class="unlimited_speed"]
${lblInternetUnlimited}    xpath=//XCUIElementTypeStaticText[@name="เน็ตไม่จำกัด ที่ความเร็ว" or @name="Unlimited internet at speed"]
${lblInternet1Mbps25Baht1DaySendToFriend}    xpath=(//XCUIElementTypeStaticText[@name="25"])[2]
${lblInternet4Mbps32Baht1DaySendToFriend}    xpath=(//XCUIElementTypeStaticText[@name="32"])[2]
${lblInternet6Mbps45Baht1DaySendToFriend}    xpath=(//XCUIElementTypeStaticText[@name="45"])[2]
${lblInternet5GB75Baht1DaySendToFriend}    name=75
#Send Internet Package To Friend_7Day
${lblInternet1Mbps120Baht7DaySendToFriend}    xpath=(//XCUIElementTypeStaticText[@name="120"])[2]
${lblInternet4Mbps220Baht7DaySendToFriend}    xpath=(//XCUIElementTypeStaticText[@name="220"])[2]
${lblInternet6Mbps270Baht7DaySendToFriend}    xpath=(//XCUIElementTypeStaticText[@name="270"])[2]
${lblInternet5GB150Baht7DaySendToFriend}    name=150
#Send Internet Package To Friend_30Day
${lblInternet1Mbps350Baht30DaySendToFriend}    xpath=(//XCUIElementTypeStaticText[@name="350"])[2]
${lblInternet4Mbps650Baht30DaySendToFriend}    xpath=(//XCUIElementTypeStaticText[@name="650"])[2]
${lblInternet6Mbps850Baht30DaySendToFriend}    xpath=(//XCUIElementTypeStaticText[@name="650"])[2]
${lblInternet5GB488Baht30DaySendToFriend}    name=488
#FriendMobileNo.
${txtInputFriendMobileNo}    xpath=//XCUIElementTypeTextField
#${btnConfirmSendToFriend}    xpath=(//div[text()="ยืนยัน" or text()="Confirm"])[1]
${lblPostpaidCondition}    xpath=//XCUIElementTypeStaticText[@name="** สำหรับลูกค้ารายเดือน/ลูกค้าเติมเงินที่มีแพ็กเน็ตใช้งานต่อเนื่อง" or @name="* For Postpaid customer / Prepaid customer who have Unlimited internet packages"]   #** สำหรับลูกค้ารายเดือน/ลูกค้าเติมเงินที่มีแพ็กเน็ตใช้งานต่อเนื่อง