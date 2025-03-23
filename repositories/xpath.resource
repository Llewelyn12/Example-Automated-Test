*** Variables ***
&{login}
...    txt_input_username=//*[@id="user-name"]
...    txt_input_password=//*[@id="password"]
...    btn_login=//*[@id="login-button"]

&{home}
...    text_product=//span[contains(@class, "title")]
...    icon_cart=//*[@id="shopping_cart_container"]/a
...    hamburger_button=//*[@id="react-burger-menu-btn"]

&{product}
...    add_to_cart_button=//*[contains(@id, "add-to-cart")]
...    icon_cart=//*[@id="shopping_cart_container"]/a
...    check_out_button=//*[@id="checkout"]