*** Variables ***
#เลือกPacekage
${btnPlayPremiumUnlimitedPackage}    xpath=//*[@name="premier499"]
${btnPlayPremiumPackage}    xpath=//*[@name="premier"]
${btnHooqPackage}    xpath=//*[@name="hooq"]
${btnViuPackage}    xpath=//XCUIElementTypeOther[11]/XCUIElementTypeImage[1]
${btnKaraoke7DaysPackage}    xpath=//XCUIElementTypeOther[11]/XCUIElementTypeImage[2]
${btnKaraoke30DaysPackage}    xpath=//XCUIElementTypeOther[11]/XCUIElementTypeImage[3]
#VerifyPackgeก่อนConfirm
${imgConfirmPlayPremiumUnlimitedPackage}    xpath=//*[@id="confirm-image"]/span/img[@src="images/banner-play-premium-unlimited.png"]
${imgConfirmPlayPremiumPackage}    xpath=//*[@id="confirm-image"]/span/img[@src="images/banner-play-premium.png"]
${imgConfirmHooqPackage}    xpath=//*[@id="confirm-image"]/span/img[@src="images/banner_03.png"]
${imgConfirmViu7DaysPackage}    xpath=//XCUIElementTypeOther[15]/XCUIElementTypeImage
${imgConfirmViu1MonthPackage}    xpath=//XCUIElementTypeOther[15]/XCUIElementTypeImage
${imgConfirmKaraoke7DaysPackage}    xpath=//XCUIElementTypeOther[15]/XCUIElementTypeImage
${imgConfirmKaraoke30DaysPackage}    xpath=//XCUIElementTypeOther[15]/XCUIElementTypeImage
${lblEntertainmentPackPrice}    xpath=//XCUIElementTypeStaticText[@name="ฟรี" or @name="Free"]
${lblEntertainmentPackDate}    xpath=/XCUIElementTypeOther[16]/XCUIElementTypeStaticText

${lblUnderPackageFreeViu1Month}    xpath=//*[@class="premiums"]
${lblUnderPackageFreeViu7Days}    xpath=//XCUIElementTypeOther[18]/XCUIElementTypeStaticText
${lblUnderPackageFreeKaraoke7Days}    xpath=//XCUIElementTypeOther[19]/XCUIElementTypeStaticText

${btnConfirmEntertainment}     xpath=//*[@id="mobile-confirm"]
