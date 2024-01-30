*** Settings ***
Library    SeleniumLibrary
Variables    ../../resource/locator/menu_pim.py

*** Variables ***
${link}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
Given - Masuk ke link
    Open Browser    ${link}    chrome
    Sleep    5s

Then - User Login
    Input Text    ${text_username}    Admin
    Sleep    0.5s

    Input Password    ${text_password}    admin123
    Sleep    0.5s

    Click Element    ${button_login}
    Sleep    10s

Then - User masuk menu PIM
    Click Element    ${menu_pim}
    Sleep    3s

Then - User melakukan search berdasarkan employee name
    Input Text    ${text_employeename}    Alice
    Sleep    1s

    Click Element    ${button_search}
    Sleep    3s

    Execute Javascript    window.scrollTo(0,2500)
    Sleep    2s

Then - User Menghapus data employee
    Click Element    ${button_delete}
    Sleep    1s

    Click Element    ${button_confirmdelete}
    Sleep    10s