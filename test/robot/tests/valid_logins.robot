*** Settings ***

Library  SeleniumLibrary
Suite Setup  Open Login Page
Suite Teardown  Close Browser

*** Variables ***

${BROWSER}
${SERVER_URL}
${SELENIUM_URL}
${SELENIUM_SPEED}
${SCREEN_WIDTH}
${SCREEN_HEIGHT}

*** Test cases ***

Successful Login
  Enter Username
  Enter Password
  Click Login Button
  Welcome Page Should Be Open

*** Keywords ***

Open Login Page
  Open Browser  url=${SERVER_URL}  browser=${BROWSER}  remote_url=${SELENIUM_URL}
  Set Selenium Speed  ${SELENIUM_SPEED}
  Set Window Size  ${SCREEN_WIDTH}  ${SCREEN_HEIGHT}

Enter Username
  Input Text  id=username_field  demo

Enter Password
  Input Password  id=password_field  mode

Click Login Button
  Click Button  id=login_button

Welcome Page Should Be Open
  Title Should Be  Welcome Page
