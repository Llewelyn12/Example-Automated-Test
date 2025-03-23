*** Settings ***
Resource        ../keywords/keyword.resource
Resource        ../repositories/xpath.resource
Resource        ../test_data/data.resource


*** Keywords ***
Add Product To Cart
    # ${count}    Get Element Count    ${product.add_to_cart_button}
    FOR    ${index}    IN RANGE    1    2
        ${add_to_cart}    Set Variable    (${product.add_to_cart_button})[${index}]
        Click On Element    ${add_to_cart}
    END

Check Out Product
    Click On Element    ${product.icon_cart}
    Click On Element    ${product.check_out_button}