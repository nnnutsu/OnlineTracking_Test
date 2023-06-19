*** Variables ***
#เลือกPacekage
${btnPlayPremiumUnlimitedPackage}           xpath=//*[@name="premier499"]
${btnPlayPremiumPackage}                    xpath=//*[@name="premier"]
${btnHooqPackage}                           xpath=//*[@name="hooq"]
${btnViuPackage}                            xpath=//*[@name="viu"]
${btnKaraoke7DaysPackage}                   xpath=//*[@name="karaoke7days"]
${btnKaraoke30DaysPackage}                  xpath=//*[@name="karaoke30days"]
#VerifyPackgeก่อนConfirm
${imgConfirmPlayPremiumUnlimitedPackage}    xpath=//*[@id="confirm-image"]/span/img[@src="images/banner-play-premium-unlimited.png"]
${imgConfirmPlayPremiumPackage}             xpath=//*[@id="confirm-image"]/span/img[@src="images/banner-play-premium.png"]
${imgConfirmHooqPackage}                    xpath=//*[@id="confirm-image"]/span/img[@src="images/banner_03.png"]
${imgConfirmViu7DaysPackage}                xpath=//*[@id="confirm-image"]/span/img[@src="/package-ontop/assets/package-ontop/images/banner_viu.png"]
${imgConfirmViu1MonthPackage}               xpath=//*[@id="confirm-image"]/span/img[@src="images/banner_viu.png"]
${imgConfirmKaraoke7DaysPackage}            xpath=//*[@id="confirm-image"]/span/img[@src="/package-ontop/assets/package-ontop/images/icon_karaoke.png"]
${imgConfirmKaraoke30DaysPackage}           xpath=//*[@id="confirm-image"]/span/img[@src="/package-ontop/assets/package-ontop/images/icon_karaoke.png"]
${lblEntertainmentPackPrice}                xpath=//*[@class="pack-price col-sm-6"]
${lblEntertainmentPackDate}                 xpath=//*[@class="pack-date col-sm-6"]

${lblUnderPackageFreeViu1Month}             xpath=//*[@class="premiums"]
${lblUnderPackageFreeViu7Days}              xpath=//*[@class="premium"]
${lblUnderPackageFreeKaraoke7Days}          xpath=//*[@class="text-icon"]