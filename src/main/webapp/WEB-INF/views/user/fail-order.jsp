<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Krist | Failed Order</title>
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
                        <c:if test="${listCartItem.size() > 0}">
                            <span id="cart-count"
                                  style="position: absolute; top: -10px; right: -12px; background: red; color: white; border-radius: 50%; padding: 1px 7px; font-size: 12px;">${listCartItem.size()}
                            </span>
                        </c:if>
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
                    <li class="breadcrumb-item "><a href="#" class="nav_link_active">Fail Order</a></li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- content -->
    <div class="container-fluid" style="background-color: #FBD9D0; padding: 30px 0;">
        <div class="container">
            <h3 style="font-weight: 700;">Failed Order</h3>
        </div>
    </div>
    <div class="container-fluid" style="margin-bottom: 60px; height: 403px;">
        <div class="container">
            <div class="text-center" style="margin-top: 88px;">
                <div style="margin-bottom: 22px;">
                    <img src="/resources/image/Failed_Order.png" alt="">
                </div>
                <div style="margin-bottom: 22px;">
                    <h3 style="font-weight: 700;">Oops! There was an issue</h3>
                </div>
                <div style="margin-bottom: 32px;">
                    <p>Oops! There was a problem processing your order. Please review the details and try again.</p>
                </div>
                <div>
                    <div style="background-color: #000; padding: 8px 26px; display: inline-block; border-radius: 5px;">
                        <a href="/ecommerce/cart" style="text-decoration: none; color:#fff; font-size: 18px;"> Reorder
                            &#8594</a>
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
    >
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="/resources/js/script.js"></script>
</body>
</html>