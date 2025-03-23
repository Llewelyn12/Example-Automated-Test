*** Settings ***
Resource    ../keywords/login.resource
Resource    ../keywords/cart.resource


*** Test Cases ***
# test_0_1 Login Swag Lab
#     Open Url On Browser    ${web_url}
#     Input Username And Password
#     Click Login Swag Lab
#     Login Success

test_0_2 Add Product To Cart
    Open Url On Browser    ${web_url}
    Input Username And Password
    Click Login Swag Lab
    Add Product To Cart
    Check Out Product
    Sleep    5s