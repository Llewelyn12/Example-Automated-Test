*** Settings ***
Resource        ../keywords/keyword.resource
Resource        ../repositories/xpath.resource
Resource        ../test_data/data.resource


*** Keywords ***
Input Username And Password
    Input Text On Element    ${login.txt_input_username}    ${username}
    Input Text On Element    ${login.txt_input_password}    ${password}
    Take Screenshot          Input Username And Password Success
    
Click Login Swag Lab
    Click On Element        ${login.btn_login}

Login Success
    Check Element Is Visible    ${home.text_product}
    Check Element Is Visible    ${home.icon_cart}
    Check Element Is Visible    ${home.hamburger_button}
    Take Screenshot    Login Success