*** Variables ***
${lblInternetSizeNonStop}            xpath=//*[@id="confirn-netsize"]
#Internet Non-Stop_1Day
${lblInternet512Kbps22Baht1Day}      xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[1]/td[1]
${lblInternet1Mbps25Baht1Day}        xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[2]/td[1]
${lblInternet4Mbps32Baht1Day}        xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[3]/td[1]
${lblInternet6Mbps45Baht1Day}        xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[4]/td[1]
${lblInternet10Mbps55Baht1Day}       xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[5]/td[1]
#Internet Non-Stop_7Day
${lblInternet512Kbps99Baht7Day}      xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[1]/td[2]
${lblInternet512Kbps89Baht7Day}      xpath=//*[@id="net-89THB" or @id="nonstop_89-7"]
${lblInternet1Mbps120Baht7Day}       xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[2]/td[2]
${lblInternet4Mbps220Baht7Day}       xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[3]/td[2]
${lblInternet6Mbps270Baht7Day}       xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[4]/td[2]
${lblInternet10Mbps330Baht7Day}       xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[5]/td[2]
#Internet Non-Stop_30Day
${lblInternet512Kbps300Baht30Day}    xpath=//*[@id="net-300THB" or @id="nonstop_300-30"]
${lblInternet512Kbps321Baht30Day}    xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[1]/td[3]
${lblInternet1Mbps350Baht30Day}      xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[2]/td[3]
${lblInternet4Mbps650Baht30Day}      xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[3]/td[3]
${lblInternet6Mbps850Baht30Day}      xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[4]/td[3]
${lblInternet10Mbps1100Baht30Day}    xpath=//*[@class="tab-content"]/div/div[1]/table/tbody/tr[5]/td[3]

#Up Speed Internet_7Day
${lblInternet1GB39Baht7Day}          xpath=//*[@class="tab-content"]/div/div[2]/table/tbody/tr/td[1]
${lblInternet2GB49Baht7Day}          xpath=//*[@class="tab-content"]/div/div[2]/table/tbody/tr/td[2]
${lblInternet3GB79Baht7Day}          xpath=//*[@class="tab-content"]/div/div[2]/table/tbody/tr/td[3]
${lblInternet4GB89Baht7Day}          xpath=//*[@class="tab-content"]/div/div[2]/table/tbody/tr/td[4]
${lblInternet5GB99Baht7Day}          xpath=//*[@class="tab-content"]/div/div[2]/table/tbody/tr/td[5]
#Up Speed Internet_15Day
${lblInternet6GB149Baht15Day}        xpath=//*[@class="tab-content"]/div/div[3]/table/tbody/tr/td[1]
${lblInternet7GB159Baht15Day}        xpath=//*[@class="tab-content"]/div/div[3]/table/tbody/tr/td[2]
${lblInternet8GB179Baht15Day}        xpath=//*[@class="tab-content"]/div/div[3]/table/tbody/tr/td[3]
${lblInternet9GB189Baht15Day}        xpath=//*[@class="tab-content"]/div/div[3]/table/tbody/tr/td[4]
${lblInternet10GB199Baht15Day}       xpath=//*[@class="tab-content"]/div/div[3]/table/tbody/tr/td[5]
#Send Internet Package To Friend_1Day
#${lblInternetUnlimited}    xpath=//*[@class="unlimited_speed"]  //*[(@class="title_pack_th" or @class="title_pack_en") and @style="display: block;"] 
${lblInternetUnlimited}                        xpath=//*[@id="confirm-speedX2"]
${lblInternet1Mbps25Baht1DaySendToFriend}      xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[1]/td[1]
${lblInternet4Mbps32Baht1DaySendToFriend}      xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[2]/td[1]
${lblInternet6Mbps45Baht1DaySendToFriend}      xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[3]/td[1]
${lblInternet5GB75Baht1DaySendToFriend}        xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[4]/td[1]
#Send Internet Package To Friend_7Day
${lblInternet1Mbps120Baht7DaySendToFriend}     xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[1]/td[2]
${lblInternet4Mbps220Baht7DaySendToFriend}     xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[2]/td[2]
${lblInternet6Mbps270Baht7DaySendToFriend}     xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[3]/td[2]
${lblInternet5GB150Baht7DaySendToFriend}       xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[4]/td[2]
#Send Internet Package To Friend_30Day
${lblInternet1Mbps350Baht30DaySendToFriend}    xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[1]/td[3]
${lblInternet4Mbps650Baht30DaySendToFriend}    xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[2]/td[3]
${lblInternet6Mbps850Baht30DaySendToFriend}    xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[3]/td[3]
${lblInternet5GB488Baht30DaySendToFriend}      xpath=//*[@class="tab-content"]/div/div[4]/table/tbody/tr[4]/td[3]
#FriendMobileNo.
${txtInputFriendMobileNo}                      xpath=//*[@id="bNumber"]
${btnConfirmSendToFriend}                      xpath=//*[@id="submit"]
${lblPostpaidCondition}                        xpath=//*[@class="postpaid_condition"]