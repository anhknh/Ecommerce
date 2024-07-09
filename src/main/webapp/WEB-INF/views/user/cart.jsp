<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Krist | cart</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
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
                        <span id="cart-count"
                              style="position: absolute; top: -10px; right: -12px; background: red; color: white; border-radius: 50%; padding: 1px 7px; font-size: 12px;">${listCartItem.size()}</span>
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
                    <li class="breadcrumb-item "><a href="ecommerce/home" class="nav_link">Ecommerce</a></li>
                    <li class="breadcrumb-item "><a href="#" class="nav_link_active">Cart</a></li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- content -->
    <div class="container-fluid">
        <div class="container" style="padding: 54px 0px; margin-bottom: 120px;">
            <div class="row">
                <div class="col-7">
                    <h5 style="margin-bottom: 22px;">Your cart</h5>
                    <div style="border-top: 1px solid #E6E7E8;">
                        <form action="/ecommerce/cart/check-out?toltalPrice=${totalPrice}" method="post" id="form_checkout">
                            <c:forEach var="cartItem" items="${listCartItem}">
                                <!-- cart_product -->
                                <div style="margin-top: 32px;" class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <input class="form-check-input" type="checkbox" value="${cartItem.cartItemId}" name="productCheck">
                                    </div>

                                    <div class="text-center" style="width: 80px ; height: 80px; background-color: #F6F6F6;">
                                        <img style="width: 75%;" src="/resources/image/${productImageService.getFirstProductImageByProductId(cartItem.productDetail.productId).nameImage}" alt="">
                                    </div>

                                    <div style="width: 200px">
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
                                        <div class="d-flex justify-content-between align-items-center"
                                             style="width: 280px;">
                                            <div style="font-size: 14px; font-weight: 500;">$<p
                                                    style="display: inline-block;">${cartItem.productDetail.price}</p></div>
                                            <div class="product_cart">
                                                <div class="d-flex justify-content-between align-items-center"
                                                     style="padding: 8px 18px; border: 1px solid #E6E7E8; border-radius: 4px; width: 107px; height:  40px;">
                                                    <div class="btn_Subtrac" style="cursor: pointer;">
                                                        <button type="button" style="background-color: #fff; border: none;" onclick="updateQuantity(${cartItem.productDetail.productDetailId}, 'decrease')">
                                                            &#8722;
                                                        </button>
                                                    </div>
                                                    <div id="quantity-${cartItem.productDetail.productDetailId}" class="quantity_number">
                                                            ${cartItem.quantity}
                                                    </div>
                                                    <div class="btn_plus" style="cursor: pointer;">
                                                        <button  type="button" style="background-color: #fff; border: none;" onclick="updateQuantity(${cartItem.productDetail.productDetailId}, 'increase')">
                                                            &#43;
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="/ecommerce/cart/delete-cart?cartItemId=${cartItem.cartItemId}" class="btn">
                                                <div class="prevent_select"
                                                     style="font-size: 26px; padding: 1px 12px; background-color: #F6F6F6;border-radius: 6px; display: inline-block;">
                                                    &#215;
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </form>

                    </div>
                </div>
                <div class="col-1"></div>
                <div class="col-4">
                    <div style="border: 1px solid #E6E7E8; border-radius: 4px; padding: 38px 18px;">
                        <h5 style="margin-bottom: 40px;">Order Summary</h5>
                        <div class="d-flex justify-content-between" style="margin-bottom: 18px;">
                            <div style="font-size: 16px; font-weight: 500; color: #5C5F6A;">Subtotal</div>
                            <div style="font-size: 16px; font-weight: 500;">$ ${totalPrice}</div>
                        </div>
                        <div class="d-flex justify-content-between" style="margin-bottom: 18px;">
                            <div style="font-size: 16px; font-weight: 500; color: #5C5F6A;">Shipping:</div>
                            <div style="font-size: 16px; font-weight: 500;">Free</div>
                        </div>
                        <div class="d-flex justify-content-between" style="margin-bottom: 18px;">
                            <div style="font-size: 16px; font-weight: 500; color: #5C5F6A;">Tax:</div>
                            <div style="font-size: 16px; font-weight: 500;">$ 3.00</div>
                        </div>
                        <hr style="color: #E6E7E8; border-width: 3px; margin-bottom: 18px;">
                        <div class="d-flex justify-content-between" style="margin-bottom: 36px;">
                            <div style="font-size: 16px; font-weight: 500;">Total</div>
                            <div style="font-size: 16px; font-weight: 500;">$ ${totalPrice + 3.00}</div>
                        </div>
                        <div id="btn_checkout" class="text-center"
                           style="background-color: #000; border-radius: 4px; color: #fff; width: 100%; padding: 12px 24px; margin-bottom: 36px; cursor: pointer;">
                            Checkout
                        </div>
                        <div class="text-center">
                            <a href="/ecommerce/categories" style="color: #000;">Continue Shopping</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="/resources/js/script.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%--ajax update quantity cart--%>
<%--ajax update quantity cart--%>
<script>
    function updateQuantity(productDetailId, action) {
        $.ajax({
            url: '/ecommerce/' + action,
            type: 'POST',
            data: { productDetailId: productDetailId },
            success: function(response) {
                let quantityElement = $('#quantity-' + productDetailId);
                let currentQuantity = parseInt(quantityElement.text());
                if (action === 'increase') {
                    quantityElement.text(currentQuantity + 1);
                } else if (action === 'decrease' && currentQuantity > 1) {
                    quantityElement.text(currentQuantity - 1);
                }
            },
            error: function(error) {
                console.log(error);
            }
        });
    }
</script>
<script>
    const btn_checkout = document.getElementById("btn_checkout");
    const form_checkout = document.getElementById("form_checkout");

    btn_checkout.addEventListener("click", ()=>{
        form_checkout.submit();
    })
</script>
</body>
</html>