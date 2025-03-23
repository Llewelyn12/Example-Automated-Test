*** Settings ***
Library        Browser


*** Keywords ***
Open Url On Browser
    [Arguments]    ${url}
    Open Browser    url=${url}        headless=${False}    browser=chromium

Input Text On Element
    [Arguments]    ${locator}    ${text}
    Type Text    ${locator}    ${text}

Click On Element
    [Arguments]    ${locator}
    Click    ${locator}

Check Element Is Visible
    [Arguments]    ${locator}
    Wait For Elements State    ${locator}    state=visible