*** Variables ***
#Language
${btnHomeLanguageTH}             xpath=//*[@class="lang-th active"]
${btnHomeLanguageEN}             xpath=//*[@class="lang-en lang"]

#Tab Menu Package
${tabMaxSpeedInternet}           xpath=//*[@class="tab-first active"]
${tabSpecialInternet}            xpath=//*[@class="tab-second"]
${tabEntertainment}              xpath=//*[@class="tab-third"]

#MaxSpeed, UpSpeed
${lblInternet}                   xpath=//*[@class="speedX2"]
${lblSizeInternet}               xpath=//*[@class="internet-size"]

#Detail Package
${lblPriceInternet}              xpath=//*[@class="pack-price col-sm-6"]
${lblAmountDayInternet}          xpath=//*[@class="pack-date col-sm-6"]
${lblDay}                        xpath=//*[@class="one_day_text"]
${lblDays}                       xpath=//*[@class="days_text"]
${btnConfirmPackage}             xpath=//*[@class="text-center mobile-button-confirm confirm_button flex-1"]

#OTP
${btnLoginOntopLanguageTH}       xpath=//a[@href="/login/changeLanguage?lang=th"]
${btnLoginOntopLanguageEN}       xpath=//a[@href="/login/changeLanguage?lang=en"]
${lblWordingLogin}               xpath=//*[@class="Sushi fontsize48 font-bold"]
${txtMobileNumber}               xpath=//*[@id="mobileNo"]
${btnRequesOtp}                  xpath=//*[@id="reqOpt"]
${txtGetOtp}                     xpath=//*[@id="otp"]
${btnConfirmOtp}                 xpath=//*[@id="login"]

#Submitted Request
${btnSubmidRequestLanguageTH}    xpath=//*[@class="th-lang language"]
${btnSubmidRequestLanguageEN}    xpath=//*[@class="en-lang language"]
${lblSubmittedRequest}           xpath=//*[@class="text-center text word-wraps" or @class="text-center word-wraps"]