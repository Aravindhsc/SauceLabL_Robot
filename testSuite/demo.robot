*** Settings ***
Resource    ../resource/resource.robot




*** Test Cases ***
Demo_1
    Setup
    sleep    3
   AppiumLibrary.Capture Page Screenshot
    
    