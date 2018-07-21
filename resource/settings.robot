*** Settings ***
Documentation     A resource for global
Library           String
Library           Dialogs
Library           Collections
Library           Selenium2Library      5            run_on_failure=Log Source
Library           DebugLibrary

*** Variable ***
${DISPLAY}
${HOME_URL}         http://automationpractice.com
${LOGINURL}         http://automationpractice.com/index.php?controller=my-account
${BROWSER}          Chrome
${DELAY}            0
${VALID_EMAIL}      sofyanapangestika@gmail.com
${VALID_PASS}       lolololo
${INVALID_PASS}     wowowowo
${UNREGISTER_EMAIL}     sopyana@ymail.com