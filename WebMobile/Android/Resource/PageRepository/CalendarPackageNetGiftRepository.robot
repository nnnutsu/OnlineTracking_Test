*** Variables ***
#Speed 1Mbps
${btnNetGift1Mbps25Baht1Day}      xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[1]/td[1]
${btnNetGift1Mbps120Baht7Day}     xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[1]/td[2]
${btnNetGift1Mbps350Baht30Day}    xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[1]/td[3]
#Speed 4Mbps
${btnNetGift4Mbps32Baht1Day}      xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[2]/td[1]
${btnNetGift4Mbps220Baht7Day}     xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[2]/td[2]
${btnNetGift4Mbps650Baht30Day}    xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[2]/td[3]
#Speed 6Mbps
${btnNetGift6Mbps45Baht1Day}      xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[3]/td[1]
${btnNetGift6Mbps270Baht7Day}     xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[3]/td[2]
${btnNetGift6Mbps850Baht30Day}    xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[3]/td[3]
#Speed 5GB
${btnNetGift5GB75Baht1Day}        xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[4]/td[1]
${btnNetGift5GB150Baht7Day}       xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[4]/td[2]
${btnNetGift5GB488Baht30Day}      xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[4]/td[3]

${lblPackUnlimited}               xpath=//*[@id="confirm-speedX2"]     #เน็ตไม่จำกัด ที่ความเร็ว 
${txtInputFriendNumber}           xpath=//*[@id="bNumber"]
${btnConFirmPackageNetGift}       xpath=//*[@class="col-6 text-center mobile-button-confirm confirm_button submit"]