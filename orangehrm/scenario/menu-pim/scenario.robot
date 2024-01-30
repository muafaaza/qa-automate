*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/step/menu_pim.robot

*** Test Cases ***
User Masuk Menu PIM
    Given - Masuk ke link
    Then - User Login
    Then - User masuk menu PIM
    Then - User melakukan search berdasarkan employee name
    Then - User Menghapus data employee
    Then - User melakukan search berdasarkan employee name
