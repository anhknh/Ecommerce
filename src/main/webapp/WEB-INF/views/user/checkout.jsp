<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Krist | Check out</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/gh/eliyantosarage/font-awesome-pro@main/fontawesome-pro-6.5.2-web/css/all.min.css">
    <link rel="stylesheet" href="/resources/css/styles.css">
</head>
<body>
<div class="main">
    <!-- Notification Bar -->
    <div class="container-fluid g-0">
        <div class="noti_bar ">
            <p class="text-center" style="line-height: 40px;">Get 25% OFF on your first order. Order Now</p>
        </div>
    </div>
    <!-- Header -->
    <div class="container-fluid g-0 header" style="width: 100%;">
        <div class="container d-flex align-items-center justify-content-between" style="height: 84px;">
            <div class="header_left d-flex align-items-center ">
                <div class="logo"><img src="/resources/image/logo.png" alt="logo"></div>
                <div class="logo_name">Ecommerce</div>
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="container-fluid">
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="/ecommerce/home">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/ecommerce/categories">Categories</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Contact</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="header_right d-flex align-items-center justify-content-end">
                <div class="input-group flex-nowrap">
                        <span class="input-group-text" id="addon-wrapping" style="background-color: #fff;">
                            <i class="fa-solid fa-magnifying-glass" style="color: #5C5F6A;"></i>
                        </span>
                    <input type="text" class="form-control" placeholder="Search products"
                           style="border-left: none; padding: 8px 60px 8px 0px; ">
                </div>
                <div style="margin: 0px 46px;">
                    <a href="#"  style="position: relative;">
                        <img src="/resources/image/Icon_cart.png" alt="user">
                    </a>
                </div>
                <div>
                    <!-- <i class="fa-regular fa-user" style="font-size: 20px;"></i> -->
                    <a href="/ecommerce/profile-orders"><img src="/resources/image/icon_user.png" alt="user"></a>
                </div>
            </div>
        </div>
    </div>
    <!-- linknav -->
    <div class="container-fluid d-flex align-items-center" style="padding: 8px; background-color: #F6F6F6;">
        <div class="container" style="padding: 0;">
            <nav style="--bs-breadcrumb-divider: '>'; line-height: 40px;" aria-label="breadcrumb">
                <ol class="breadcrumb" style="height: 40px; margin: 0px;">
                    <li class="breadcrumb-item "><a href="/ecommerce/home" class="nav_link">Ecommerce</a></li>
                    <li class="breadcrumb-item "><a href="/ecommerce/cart" class="nav_link">Cart</a></li>
                    <li class="breadcrumb-item "><a href="#" class="nav_link_active">Check Out</a></li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- content -->
    <div class="container-fluid" style="margin: 60px 0;">
        <div class="container" style="padding: 24px 8px;">
            <div class="row">
                <div class="col-6">
                    <div class="d-flex justify-content-between">
                        <div>
                            <h5 style="margin-bottom: 18px;">
                                <i class="fa-light fa-truck"></i>
                                Product order
                            </h5>
                        </div>
                        <div style="margin-right: 40px;">
                            <a href="/ecommerce/cart" class="btn_change_cart bg_white text_black"
                               style="display: inline-block; padding: 4px; border: 1px solid #000; border-radius: 4px; text-decoration: none;">Edit
                                cart</a>
                        </div>
                    </div>
                    <div>
                        <c:forEach var="cartItem" items="${listCartItem}">

                            <!-- product_order -->
                            <div style="margin-top: 32px;" class="d-flex justify-content-between align-items-center">

                                <div class="text-center" style="width: 80px ; height: 80px; background-color: #F6F6F6;">
                                    <img style="width: 75%;" src="/resources/image/${productImageService.getFirstProductImageByProductId(cartItem.productDetail.productId).nameImage}" alt="">
                                </div>

                                <div>
                                    <p style="font-size: 16px; font-weight: 500;">${cartItem.productDetail.productId.productName}</p>
                                    <!-- product_cart_color -->
                                    <div class="d-flex justify-content-between align-items-center"
                                         style="width: 154px ; height:  24px;">
                                        <div>
                                            Color:
                                        </div>
                                        <div style=" padding: 8px; border-radius: 50%; background-color: ${cartItem.productDetail.attributeColor.attributeValue};"></div>
                                        <div style=" font-size: 16px; font-weight: 500; color: #5C5F6A; margin: 0px 6px;">
                                            &#8722;
                                        </div>
                                        <div>
                                            Size:
                                        </div>
                                        <div style=" font-size: 16px; font-weight: 500; color: #5C5F6A;">${cartItem.productDetail.attributeSize.attributeValue}</div>
                                    </div>
                                </div>
                                <div>
                                    <div class="d-flex justify-content-between align-items-center" style="width: 280px;">
                                        <div style="font-size: 14px; font-weight: 500;">Price: $<p
                                                style="display: inline-block; margin: 0;">${cartItem.productDetail.price}</p></div>
                                        <div style="font-size: 14px; font-weight: 500; margin-right: 60px;">Quantity: <p
                                                style="display: inline-block; margin: 0;">${cartItem.quantity}</p></div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-6" style="border-left: 2px solid #E6E7E8; padding-left: 24px;">
                    <!-- Address -->
                    <div style="margin-bottom: 24px;">

                        <div class="d-flex justify-content-between">
                            <div>
                                <h5 style="margin-bottom: 18px;">
                                    <i class="fa-light fa-location-dot"></i>
                                    Shipping address
                                </h5>
                                <div style="margin-bottom: 8px;">Name:
                                    <p style="display: inline-block; margin-left: 8px; font-weight: 600; margin-bottom: 0;">
                                        ${customerDetailDefault.nameCustomer}</p> -
                                    Phone number:
                                    <p style="display: inline-block; margin-left: 8px; font-weight: 600; margin-bottom: 0;">
                                        ${customerDetailDefault.phoneNumber}</p>
                                </div>
                                <div style="margin-bottom: 8px;">Address:
                                    <p style="display: inline-block; margin-left: 8px; font-weight: 600; margin-bottom: 0;">
                                        ${customerDetailDefault.addressCustomer}</p>
                                </div>
                            </div>
                            <div>
                                <button class="btn_change_address bg_white" data-bs-toggle="modal"
                                        data-bs-target="#modal_change_address"
                                        style="padding: 4px; border: 1px solid #000; border-radius: 4px;">Change address
                                </button>
                            </div>
                        </div>
                    </div>
                    <!-- bill_detail -->
                    <div>
                        <h5 style="margin-bottom: 18px;">
                            <i class="fa-light fa-money-bill"></i>
                            Payment methods
                        </h5>
                        <div style="border-bottom: 1px solid #E6E7E8; padding-bottom: 12px;">
                            <div class="form-check form-check-inline" style="padding: 0; margin:0px 12px 8px 0px;">
                                <input class="form-check-input radio_size" type="radio" name="payment" id="inlineRadio4"
                                       value="direct" style="display: none;" checked>
                                <label class="form-check-label lable_radio_size selected_radio_size" for="inlineRadio4"
                                       style="padding: 10px 16px; cursor: pointer;border-radius: 4px;">
                                    <p style="margin: 0; padding: 0; font-size: 12px; font-weight: 500;">Payment on
                                        delivery</p>
                                </label>
                            </div>
                            <div class="form-check form-check-inline" style="padding: 0; margin:0px 12px 8px 0px;">
                                <input class="form-check-input radio_size" type="radio" name="payment" id="inlineRadio5"
                                       style="display: none;" value="VNpay">
                                <label class="form-check-label lable_radio_size non_radio_size" for="inlineRadio5"
                                       style="padding: 10px 16px; cursor: pointer;border-radius: 4px;;">
                                    <p style="margin: 0; padding: 0; font-size: 12px; font-weight: 500;">VN Pay</p>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div style="margin-top: 18px;">
                        <h5 style="margin-bottom: 18px;">
                            <i class="fa-light fa-box"></i>
                            My order
                        </h5>
                        <div class="d-flex flex-row-reverse" style="border-bottom:1px solid #E6E7E8 ;">
                            <div style="width: 250px;">
                                <div class="d-flex justify-content-between" style="margin-bottom: 18px;">
                                    <div style="font-size: 16px; font-weight: 500; color: #5C5F6A;">Subtotal</div>
                                    <div style="font-size: 16px; font-weight: 500; color: #5C5F6A;">$ ${totalPrice}</div>
                                </div>
                                <div class="d-flex justify-content-between" style="margin-bottom: 18px;">
                                    <div style="font-size: 16px; font-weight: 500; color: #5C5F6A;">Shipping:</div>
                                    <div style="font-size: 16px; font-weight: 500; color: #5C5F6A;">Free</div>
                                </div>
                                <div class="d-flex justify-content-between" style="margin-bottom: 18px;">
                                    <div style="font-size: 16px; font-weight: 500; color: #5C5F6A;">Tax:</div>
                                    <div style="font-size: 16px; font-weight: 500; color: #5C5F6A;">$ 3.00</div>
                                </div>
                                <div class="d-flex justify-content-between" style="margin-bottom: 36px;">
                                    <div style="font-size: 16px; font-weight: 500;">Total</div>
                                    <div style="font-size: 16px; font-weight: 600;">$ ${totalPrice + 3}</div>
                                </div>
                            </div>
                        </div>
                        <div class="d-flex justify-content-between" style=" margin-top: 18px;">
                            <div style="width: 350px; font-size: 13px;">
                                By clicking 'Place Order', you agree to adhere to our terms and conditions.
                            </div>
                            <div>
                                <a id="btn_order" href="/ecommerce/checkout/order?payment=direct" class="btn"
                                   style=" background-color: #000; border-radius: 4px; color: #fff; width: 250px; padding: 8px; margin-bottom: 36px;">
                                    Place Order
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- content -->

    <!-- footer -->
    <div>
        <!-- Newsletter -->
        <div class="container-fulid" style="background-color: #F6F6F6; height: 200px; margin:0px 0px 72px 0px;">
            <div class="container d-flex align-items-center justify-content-between" style="height: 200px;">
                <div>
                    <h3 style="color: #000; margin-bottom: 18px;">Join Our Newsletter </h3>
                    <p style="color: #5C5F6A; font-size: 14px;">We love to surprise our subscribers with occasional
                        gifts.</p>
                </div>
                <div style="width: 340px;">
                    <div>
                        <form>
                            <div class="d-flex align-items-center">
                                <div style=" margin-right: 12px;">
                                    <input type="email" class="form-control" style="padding-right: 44px;"
                                           placeholder="Your email address">
                                </div>
                                <div>
                                    <button type="submit" class="btn bg-black text-white">Subscribe</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- contact -->
        <div class="container d-flex align-items-center" style="padding-bottom: 120px;">
            <div style="width: 272px; margin-right: 142px;">
                <div class="d-flex align-items-center" style="margin-bottom: 12px;">
                    <div style="padding: 8px 14px; margin-right: 8px; border-radius: 5px; border: 1px solid #E6E7E8;">
                        <img src="/resources/image/logo_black.png" alt="logo">
                    </div>
                    <div>
                        <div style="font-size: 20px; font-weight: 600;">Ecommerce</div>
                    </div>
                </div>
                <p style="font-size: 14px; color: #5C5F6A; margin-bottom: 28px;">Connect with us on social
                    networking</p>
                <div class="d-flex justify-content-between" style="padding-right: 60px;">
                    <div>
                        <i class="fa-brands fa-instagram" style="font-size: 20px;"></i>
                    </div>
                    <div>
                        <i class="fa-brands fa-facebook" style="font-size: 20px;"></i>
                    </div>
                    <div>
                        <i class="fa-brands fa-youtube" style="font-size: 20px;"></i>
                    </div>
                    <div>
                        <i class="fa-brands fa-tiktok" style="font-size: 20px;"></i>
                    </div>
                    <div>
                        <i class="fa-brands fa-twitter" style="font-size: 20px;"></i>
                    </div>
                </div>
            </div>
            <div style="width: 484px; margin-right: 100px;">
                <div style=" margin-right: 72px; display: inline-block;">
                    <p style="font-size: 14px; font-weight: 500; color: #5C5F6A; margin-bottom: 40px;">SUPPORT</p>
                    <p><a href="#"
                          style="text-decoration: none; color: #5C5F6A; font-size: 14px; font-weight: 500; margin-bottom: 16px;">FAQ</a>
                    </p>
                    <p><a href="#"
                          style="text-decoration: none; color: #5C5F6A; font-size: 14px; font-weight: 500; margin-bottom: 16px;">Terms
                        of use</a></p>
                    <p><a href="#"
                          style="text-decoration: none; color: #5C5F6A; font-size: 14px; font-weight: 500; margin-bottom: 16px;">Privacy
                        Policy</a></p>

                </div>
                <div style=" margin-right: 72px; display: inline-block;">
                    <p style="font-size: 14px; font-weight: 500; color: #5C5F6A; margin-bottom: 40px;">COMPANY</p>
                    <p><a href="#"
                          style="text-decoration: none; color: #5C5F6A; font-size: 14px; font-weight: 500; margin-bottom: 16px;">About
                        us</a></p>
                    <p><a href="#"
                          style="text-decoration: none; color: #5C5F6A; font-size: 14px; font-weight: 500; margin-bottom: 16px;">Contact</a>
                    </p>
                    <p><a href="#"
                          style="text-decoration: none; color: #5C5F6A; font-size: 14px; font-weight: 500; margin-bottom: 16px;">Careers</a>
                    </p>

                </div>
                <div style=" margin-right: 72px; display: inline-block;">
                    <p style="font-size: 14px; font-weight: 500; color: #5C5F6A; margin-bottom: 40px;">SHOP</p>
                    <p><a href="#"
                          style="text-decoration: none; color: #5C5F6A; font-size: 14px; font-weight: 500; margin-bottom: 16px;">My
                        Account</a></p>
                    <p><a href="#"
                          style="text-decoration: none; color: #5C5F6A; font-size: 14px; font-weight: 500; margin-bottom: 16px;">Checkout</a>
                    </p>
                    <p><a href="#"
                          style="text-decoration: none; color: #5C5F6A; font-size: 14px; font-weight: 500; margin-bottom: 16px;">Cart</a>
                    </p>

                </div>
            </div>
            <div style="width: 272px;">
                <p style="color: #5C5F6A; font-size: 14px; font-weight: 500; margin-bottom: 22px;">ACCEPTED PAYMENTS</p>
                <div class="d-flex justify-content-between" style="padding-right: 60px;">
                    <div>
                        <i class="fa-brands fa-cc-mastercard" style="font-size: 20px;"></i>
                    </div>
                    <div>
                        <i class="fa-brands fa-cc-visa" style="font-size: 20px;"></i>
                    </div>
                    <div>
                        <i class="fa-brands fa-cc-amex" style="font-size: 20px;"></i>
                    </div>
                    <div>
                        <i class="fa-brands fa-cc-paypal" style="font-size: 20px;"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="container text-center" style="padding: 8px;">
            <p style=" color: #5C5F6A; font-size: 14px; font-weight: 400;">&copy; KNHA | All rights reserved.</p>
        </div>
    </div>
</div>

<!-- modal_change_address -->
<div class="modal fade" id="modal_change_address" tabindex="-1" aria-labelledby="modal_changeAddressLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content" style="padding: 8px; width: 494px; height: 578px;">
            <div class="modal-header">
                <h5 class="modal-title" id="modal_changeAddressLabel">My address</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <c:forEach var="customerDetail" items="${listCustomerDetail}" varStatus="status">
                    <div class="mb-3" style="border-bottom: 1px solid #E6E7E8;">
                        <input ${customerDetailDefault.detailId == customerDetail.detailId ? "checked" : ""} value="${customerDetail.detailId}" style="margin-top: 20px;" class="form-check-input addressData" type="radio" name="address"
                               id="${customerDetail.detailId}">
                        <label class="form-check-label" for="${customerDetail.detailId}" style="margin-left: 12px;">
                            <div style="margin-bottom: 8px;">
                                <p style="display: inline-block; margin-left: 8px; padding-right: 8px; font-weight: 600; margin-bottom: 0; font-size: 18px;">
                                    ${customerDetail.nameCustomer}</p>
                                <p style="display: inline-block; padding: 8px; margin-bottom: 0; color: #5C5F6A; font-size: 16px; border-left: 1px solid #E6E7E8;">
                                    ${customerDetail.phoneNumber}</p>
                            </div>
                            <div style="margin-bottom: 8px;">
                                <p style="display: inline-block; margin-left: 8px; font-weight: 600;color: #5C5F6A; margin-bottom: 0; font-size: 16px;">
                                    ${customerDetail.addressCustomer}</p>
                            </div>
                        </label>
                    </div>
                </c:forEach>
            </div>
            <div class="modal-footer" style="border: none; align-items: normal; justify-content: unset;">
                <button class="btn bg-black" style="font-size: 14px; font-weight: 500; width: 100%; height: 40px;">
                    <a id="changeAddress" href="/ecommerce/checkout/change-address?idDetail=${customerDetailDefault.detailId}" style="text-decoration: none; color: #fff;">Confirm</a>
                </button>
            </div>
        </div>
    </div>
</div>
<!-- modal_change_address -->

<style>
    .form-check-input:checked {
        background-color: #000;
        border-color: #000;
    }
</style>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="/resources/js/script.js"></script>
<script>
    //address
    const changeAddress = document.getElementById("changeAddress");
    const addressCheck = document.querySelectorAll(".addressData");
    const urlAddress = "/ecommerce/checkout/change-address?idDetail=";
    const urOrder = "/ecommerce/checkout/order?payment=";
    //payment
    const payment = document.getElementsByName("payment");
    const btnOrder = document.getElementById("btn_order");
    //set url
    const newUrlAddress = urlAddress.substring(0, changeAddress.href.indexOf('?idDetail=') + 10);
    const newUrlOrder = urOrder.substring(0, btnOrder.href.indexOf('?payment=') + 9);
    for (let i = 0; i < addressCheck.length; i++) {
        addressCheck[i].addEventListener("change", () => {
            if (addressCheck[i].checked)
                changeAddress.href = newUrlAddress + addressCheck[i].value;
        })
    }
    for (let i = 0; i < payment.length; i++) {
        payment[i].addEventListener("change", () => {
            if (payment[i].checked)
                btnOrder.href = newUrlOrder + payment[i].value;
        })
    }
</script>
</body>
</html>