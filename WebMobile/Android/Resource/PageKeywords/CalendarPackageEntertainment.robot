*** Settings ***
Library         Selenium2Library
Resource        Common.robot    
Resource          ../Localized/${ar_LANG}/CalendarPackageEntertainmentLocalized.robot
Resource          ../Localized/${ar_LANG}/CommonLocalized.robot
Resource          ../PageRepository/CalendarPackageEntertainmentRepository.robot
Resource          ../PageRepository/CommonRepository.robot

*** Keywords ***
Select Package VIY Premium By Month
    Click Web Element   ${PackageVIUPremium}
    Scroll Web To Element    ${lblUnderPackageViu}
    Web Element Text Should Be    ${lblPriceInternet}    ${txtFreePackage}
    Web Element Text Should Be    ${lblAmountDayInternet}    ${txtAmount1Month}
    Web Element Text Should Be    ${lblUnderPackageViu}    ${txtUnderPackageViuByMonth}
    Web Capture Screen At Verify Point    Package VIY Premium
    Confirm Package
    Login Ontop Package Page

Select Package VIY Premium By Day
    Click Web Element   ${PackageVIUPremium}
    Scroll Web To Element    ${lblUnderPackageViu}
    Web Element Text Should Be    ${lblPriceInternet}    ${txtFreePackage}
    Web Element Text Should Be    ${lblAmountDayInternet}    ${txtAmount7Days}
    Web Element Text Should Be    ${lblUnderPackageViu}    ${txtUnderPackageVIUByDay}
    Web Capture Screen At Verify Point    Package VIY Premium
    Confirm Package
    Login Ontop Package Page

Select Package AIS Karaoke 7 Days
    Click Web Element   ${PackageAisKaraoke7Days}
    Scroll Web To Element    ${lblUnderPackageKaraoke7Days}
    Web Element Text Should Be    ${lblPriceInternet}    ${txtFreePackage}
    Web Element Text Should Be    ${lblAmountDayInternet}    ${txtAmount7Days}
    Web Element Text Should Be    ${lblUnderPackageKaraoke7Days}    ${txtUnderPackageKaraoke7Days}
    Web Capture Screen At Verify Point    Package AIS Karaoke 7 Days
    Confirm Package
    Login Ontop Package Page

Select Package AIS Karaoke 30 Days
    Click Web Element   ${PackageAisKaraoke30Days}
    Web Element Text Should Be    ${lblPriceInternet}    ${txtFreePackage}
    Web Element Text Should Be    ${lblAmountDayInternet}    ${txtAmount30Days}
    Web Capture Screen At Verify Point    Select Package AIS Karaoke 7 Days
    Confirm Package
    Login Ontop Package Page
    
Login Ontop Package Page
    Change Language Login Ontop
    Web Capture Screen At Verify Point    Login Ontop Package
