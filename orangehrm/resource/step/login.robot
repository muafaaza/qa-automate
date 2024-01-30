*** Settings ***
Library    SeleniumLibrary
Variables    ../../resource/locator/login.py

*** Variables ***
${link}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Given - Masuk ke link
    Open Browser    ${link}    chrome
    Sleep    5s

Then - User input Username
    Input Text    ${text_username}    Admin
    Sleep    0.5s

Then - User Input Password
    Input Password    ${text_password}    admin123
    Sleep    0.5s

Then - User Input Password (salah)
    Input Password    ${text_password}    adminss
    Sleep    0.5s

Then - User Click Login Button
    Click Element    ${button_login}
    Sleep    10s
    