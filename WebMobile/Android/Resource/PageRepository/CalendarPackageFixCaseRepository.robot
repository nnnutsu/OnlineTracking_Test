*** Variables ***
# Tab Menu Package
${tabMenuMaxSpeedInternet}                xpath=//*[@class="tab-first active"]
${tabMenuSpecialInternetRefillPackage}    xpath=//*[@class="tab-second"]
${tabMenuEntertainment}                   xpath=//*[@class="tab-third"]

# ตรวจสอบ Wording Tab Menu
${tabMaxSpeedInternet}                 xpath=//*[@class="tab-first active"]
${tabSpecialInternetRefillPackage}     xpath=//*[@class="tab-second active"]
${tabInternetNonStop}                  xpath=//*[@class="second-panel mobile-m-b-75"]/div[1]/div
${tabUpSpeedInternet}                  xpath=//*[@class="second-panel mobile-m-b-75"]/div[2]/div
${tabInternetPackagesToFriend}         xpath=//*[@class="second-panel mobile-m-b-75"]/div[4]/div
${tabEntertainmentPackages}            xpath=//*[@class="tab-third active"]

# ตรวจสอบ Wording ใต้ตาราง 
${lblWordingUnderTable_MaxSpeedInternetUpX3}    xpath=//*[@class="Pack-XSpeed"]
${lblWordingUnderTable_UpSpeedInternet}         xpath=//*[@class="postpaid_condition"]

# ตรวจสอบ Wording ปริมาณเน็ต ที่หัวข้อตาราง
# Start {
${lblVolumnInternet_MaxSpeedInternet}       xpath=//*[@class="volume-title"]
${lblVolumn100MB_MaxSpeedInternetDownX3}    xpath=//*[@class="first-table"]/tbody/tr[1]/th
${lblVolumn200MB_MaxSpeedInternetDownX3}    xpath=//*[@class="first-table"]/tbody/tr[2]/th
${lblVolumn600MB_MaxSpeedInternetDownX3}    xpath=//*[@class="first-table"]/tbody/tr[3]/th
${lblVolumn1GB_MaxSpeedInternetDownX3}      xpath=//*[@class="first-table"]/tbody/tr[4]/th
${lblVolumn1.5GB_MaxSpeedInternetDownX3}    xpath=//*[@class="first-table"]/tbody/tr[5]/th
${lblVolumn2GB_MaxSpeedInternetDownX3}      xpath=//*[@class="first-table"]/tbody/tr[6]/th
${lblVolumn3GB_MaxSpeedInternetDownX3}      xpath=//*[@class="first-table"]/tbody/tr[7]/th
${lblVolumn4GB_MaxSpeedInternetDownX3}      xpath=//*[@class="first-table"]/tbody/tr[8]/th
${lblVolumn5GB_MaxSpeedInternetDownX3}      xpath=//*[@class="first-table"]/tbody/tr[9]/th
${lblVolumn8GB_MaxSpeedInternetDownX3}      xpath=//*[@class="first-table"]/tbody/tr[10]/th

${lblVolumn100MB_MaxSpeedInternetUpX3}    xpath=//*[@class="first-table"]/tbody/tr[1]/th
${lblVolumn200MB_MaxSpeedInternetUpX3}    xpath=//*[@class="first-table"]/tbody/tr[2]/th
${lblVolumn600MB_MaxSpeedInternetUpX3}    xpath=//*[@class="first-table"]/tbody/tr[3]/th
${lblVolumn1GB_MaxSpeedInternetUpX3}      xpath=//*[@class="first-table"]/tbody/tr[4]/th
${lblVolumn1.5GB_MaxSpeedInternetUpX3}    xpath=//*[@class="first-table"]/tbody/tr[5]/th
${lblVolumn2GB_MaxSpeedInternetUpX3}      xpath=//*[@class="first-table"]/tbody/tr[6]/th
${lblVolumn3GB_MaxSpeedInternetUpX3}      xpath=//*[@class="first-table"]/tbody/tr[7]/th
${lblVolumn4GB_MaxSpeedInternetUpX3}      xpath=//*[@class="first-table"]/tbody/tr[8]/th
${lblVolumn8GB_MaxSpeedInternetUpX3}      xpath=//*[@class="first-table"]/tbody/tr[9]/th
${lblVolumn15GB_MaxSpeedInternetUpX3}     xpath=//*[@class="first-table"]/tbody/tr[10]/th

${lblSpeed_InternetNonStop}               xpath=//*[@class="ontop-table table table-responsive"]//*[@class="tab-content"]/div/div[1]/table/thead/tr[1]/th[1]
${lblSpeed512kbps_InternetNonStop}        xpath=//*[@class="second-panel mobile-m-b-75"]/div[1]/table/tbody/tr[1]/th
${lblSpeed1Mbps_InternetNonStop}          xpath=//*[@class="second-panel mobile-m-b-75"]/div[1]/table/tbody/tr[2]/th
${lblSpeed4Mbps_InternetNonStop}          xpath=//*[@class="second-panel mobile-m-b-75"]/div[1]/table/tbody/tr[3]/th
${lblSpeed6Mbps_InternetNonStop}          xpath=//*[@class="second-panel mobile-m-b-75"]/div[1]/table/tbody/tr[4]/th
${lblSpeed10Mbps_InternetNonStop}         xpath=//*[@class="second-panel mobile-m-b-75"]/div[1]/table/tbody/tr[5]/th

${lblVolumn7Days_UpSpeedInternet}         xpath=//*[@class="tab2-1"]//*[@class="value_title"]
${lblVolumn1GB_UpSpeedInternet}           xpath=//*[@class="tab2-1"]//*[@id="head-pack-data2"]/th[1]
${lblVolumn2GB_UpSpeedInternet}           xpath=//*[@class="tab2-1"]//*[@id="head-pack-data2"]/th[2]
${lblVolumn3GB_UpSpeedInternet}           xpath=//*[@class="tab2-1"]//*[@id="head-pack-data2"]/th[3]
${lblVolumn4GB_UpSpeedInternet}           xpath=//*[@class="tab2-1"]//*[@id="head-pack-data2"]/th[4]
${lblVolumn5GB_UpSpeedInternet}           xpath=//*[@class="tab2-1"]//*[@id="head-pack-data2"]/th[5]

${lblVolumn15Days_UpSpeedInternet}        xpath=//*[@class="tab2-3"]//*[@class="value_title"]
${lblVolumn6GB_UpSpeedInternet}           xpath=//*[@class="tab2-3"]//*[@id="head-pack-data2"]/th[1]
${lblVolumn7GB_UpSpeedInternet}           xpath=//*[@class="tab2-3"]//*[@id="head-pack-data2"]/th[2]
${lblVolumn8GB_UpSpeedInternet}           xpath=//*[@class="tab2-3"]//*[@id="head-pack-data2"]/th[3]        
${lblVolumn9GB_UpSpeedInternet}           xpath=//*[@class="tab2-3"]//*[@id="head-pack-data2"]/th[4]
${lblVolumn10GB_UpSpeedInternet}          xpath=//*[@class="tab2-3"]//*[@id="head-pack-data2"]/th[5]

${eleInternetPackageToFriend}                xpath=//*[@class="head-pack-data2-2"]
${lblVolumn_InternetPackageToFriend}         xpath=//*[@class="tab2-4"]//*[@class="volume day_value_mobile"]
${lblVolumn1Mbps_InternetPackageToFriend}    xpath=//*[@class="tab2-4"]/table/tbody/tr[1]/th
${lblVolumn4Mbps_InternetPackageToFriend}    xpath=//*[@class="tab2-4"]/table/tbody/tr[2]/th
${lblVolumn6Mbps_InternetPackageToFriend}    xpath=//*[@class="tab2-4"]/table/tbody/tr[3]/th
${lblVolumn5GB_InternetPackageToFriend}      xpath=//*[@class="tab2-4"]/table/tbody/tr[4]/th
# } End


# ตรวจสอบ Wording ปริมาณวัน ที่หัวข้อตาราง
# Start {
${lblAmountDaysMaxSpeedInternet}        xpath=//*[@class="table-day"]
${lbl1Day_MaxSpeedInternet}             xpath=//*[@class="soft-border-bottom"][1]	
${lbl3Days_MaxSpeedInternet}            xpath=//*[@class="soft-border-bottom"][2]	
${lbl7Days_MaxSpeedInternet}            xpath=//*[@class="soft-border-bottom"][3]	
${lbl30Days_MaxSpeedInternet}           xpath=//*[@class="soft-border-bottom"][4]

${lblAmountDayInternetNonStop}          xpath=//*[@class="ontop-table table table-responsive"]//*[@class="tab-content"]/div/div[1]/table/thead/tr[1]/th[2]
${lbl1Day_InternetNonStop}              xpath=//*[@class="ontop-table table table-responsive"]//*[@class="tab-content"]/div/div[1]/table/thead//*[@id="head-pack-data2"]/th[1]
${lbl7Days_InternetNonStop}             xpath=//*[@class="ontop-table table table-responsive"]//*[@class="tab-content"]/div/div[1]/table/thead//*[@id="head-pack-data2"]/th[2]
${lbl30Days_InternetNonStop}            xpath=//*[@class="ontop-table table table-responsive"]//*[@class="tab-content"]/div/div[1]/table/thead//*[@id="head-pack-data2"]/th[3]

${lblAmount7DaysUpSpeedInternet}        xpath=//*[@class="tab2-1"]//*[@class="volume day_value_mobile"]
${lbl7Days_UpSpeedInternet}             xpath=//*[@class="tab2-1"]/table/tbody/tr/th

${lblAmount15DaysUpSpeedInternet}        xpath=//*[@class="tab2-3"]//*[@class="volume valume-title day_value_mobile"]
${lbl15Days_UpSpeedInternet}             xpath=//*[@class="tab2-3"]/table/tbody/tr/th

${lblAmountDayInternetPackageToFriend}       xpath=//*[@class="tab2-4"]//*[@class="value_title"]
${lbl1Day_InternetPackageToFriend}           xpath=//*[@class="tab2-4"]//*[@id="head-pack-data2"]/th[1]
${lbl7Days_InternetPackageToFriend}          xpath=//*[@class="tab2-4"]//*[@id="head-pack-data2"]/th[2]
${lbl30Days_InternetPackageToFriend}         xpath=//*[@class="tab2-4"]//*[@id="head-pack-data2"]/th[3]
# } End

# ตรวจสอบปุ่ม "ย้อนกลับ" / "ยกเลิก"
${btnBackPackage}                            xpath=//*[@class="text-center mobile-button-cancel flex-1"]
${btnCancelPackage}                          xpath=//*[@class="col-6 text-center mobile-button-cancel back_button cancel"]

# ตรวจสอบแพ็กเกจจาก Banner
${imgBannerMaoMaoVoice}              xpath=//app-banner/div
${btnLanguageTH}                     xpath=//*[@id="lang_th"]
${btnLanguageEN}                     xpath=//*[@id="lang_en"]
${lblMaoMaoVoice}                    xpath=//*[@class="speed"]
${lblMinuteMaoMaoVoice}              xpath=//*[@class="internet"]/h3
${lblPackPrice}                      xpath=//*[@class="pack-price col-xs-6"]
${lblPackDay}                        xpath=//*[@class="pack-date col-xs-6"]
