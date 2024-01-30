*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/step/login.robot

*** Test Cases ***
User Login
    Given - Masuk ke link
    Then - User input Username
    Then - User Input Password
    Then - User Click Login Button

User Login - Invalid Credentials
    Given - Masuk ke link
    Then - User input Username
    Then - User Input Password (salah)
    Then - User Click Login Button


