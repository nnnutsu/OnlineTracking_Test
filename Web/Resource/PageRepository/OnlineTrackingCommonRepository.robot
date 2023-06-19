*** Variables ***
###หน้าRegisterOTP
${txtInputMobileNo}                         xpath=//*[@id="mobileNo"]
${btnRequestPassword}                       xpath=//*[@id="reqOpt"]/span
${txtInputOTP}                              xpath=//*[@id="otp"]
${btnOK}                                    xpath=//*[@id="login"]
${lblLogin}                                 xpath=//h2[@class="Sushi fontsize48 font-bold"]
${lblMobileNumber}                          xpath=//html/body/form/div[1]/div/div[3]/label
${lblMessageYourRequestHasBeenSubmitted}    xpath=//*[@id="text-html" or @class="text-center word-wraps"]
${btnLanguageThRegister}                    xpath=//a[@href="/login/changeLanguage?lang=th"]
${btnLanguageEnRegister}                    xpath=//a[@href="/login/changeLanguage?lang=en"]
##Ontop-Package
${lblHeaderOnTopPackage}                    xpath=//*[@class="ontop-title"]    # แพ็กเกจเสริม อินเทอร์เน็ต
${btnLanguageTH}                            xpath=//*[@class="lang-th active"]
${btnLanguageEN}                            xpath=//*[@class="lang-en lang"]
${MnuTabNetMaxSpeed}                        xpath=//*[@class="tab-first active"]
${MnuTabSpecialInternet}                    xpath=//*[@class="tab-second"]
${MnuTabEntertainment}                      xpath=//*[@class="tab-third"]
${lblInternet}                              xpath=//*[@class="speedX2"]
${lblInternetSize}                          xpath=//*[@class="internet-size"]
${lblPackPrice}                             xpath=//*[@class="pack-price col-sm-6"]
${lblPackDate}                              xpath=//*[@class="pack-date col-sm-6"]
${btnConfirm}                               xpath=//*[@id="confirm"]
##Mao Mao Voice
${lblMaoMaoVoice}           //*[@class="speed"]
${lblMinuteMaoMaoVoice}     //*[@class="internet"]/h3
${lblPriceMaoMaoVoice}      //*[@class="pack-price col-xs-6"]
${lblDayMaoMaoVoice}        //*[@class="pack-date col-xs-6"]