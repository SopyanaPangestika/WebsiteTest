*** Keywords ***
Setup Server
  [Timeout]         30 seconds
  Open Browser      ${HOME_URL}       ${BROWSER}

Open Browser To Login Page
    [Timeout]       30 Second
    Open Browser    ${LOGIN_URL}      ${BROWSER}
    
Verify Login and Register Page
    Wait Until Page Contains Element      xpath=//form[@id="login_form"]

Verify Success Login
    Wait Until Page Contains Element   xpath=//p[@class="info-account"][contains(text(),"Welcome to your account.")]   timeout=5        error=Login Not success

Input Login Username
    Input Text                           xpath=//input[@id="email"]                                                       ${VALID_EMAIL}
    
Submit Btn Login
    Click Button                         xpath=//button[@id="SubmitLogin"]
    
Verify Login Validation
    Wait Until Page Contains Element      xpath=//p[contains(text(),"There is 1 error")]
    
Input Login Password
    Input Password                       xpath=//input[@id="passwd"]                                                           ${VALID_PASS}
    
Input Existing Email Address
    Input Text                           xpath=//input[@id="email_create"]          ${VALID_EMAIL}
    
Verify Validation Email Account
    Wait Until Page Contains Element        xpath=//li[contains(text(),"this email address has already been registered")]           timeout=3
    
input Email Address 
    Input Text                           xpath=//input[@id="email_create"]          ${UNREGISTER_EMAIL}
    
Submit Create an account btn
    Click Button                xpath=//button[@id="SubmitCreate"]
    
Verify Form Register Page
    Wait Until Page Contains Element        xpath=//h3[contains(text(),"Your personal information")]    timeout=5
    Wait Until Page Contains Element        xpath=//button[@id="submitAccount"]     timeout=3
    
Verify Product info
    Execute Javascript     window.scrollTo(0, 500);
    Wait Until Page Contains Element        xpath=//img[@class="img-responsive"]   timeout=3
    Wait Until Page Contains Element        xpath=//a[@title=contains(text(),"Add to cart")]    timeout=5
    
Submit add to cart 
    Execute Javascript    $(".img-responsive").mouseover();
    Click Element        xpath=//span[contains(text(),"Add to cart")]
    
Verify Product Successfull Added
    Wait Until Page Contains Element        xpath=//h2//i[@class="icon-ok"]
    
    