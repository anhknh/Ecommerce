<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Krist | Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/all.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-thin.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-solid.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-regular.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-light.css">
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
                    <a href="#" data-bs-toggle="modal" data-bs-target="#modal_cart" style="position: relative;">
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
        <div class="container">
            <nav style="--bs-breadcrumb-divider: '>'; line-height: 40px;" aria-label="breadcrumb">
                <ol class="breadcrumb" style="height: 40px; margin: 0px;">
                    <li class="breadcrumb-item "><a href="/ecommerce/home" class="nav_link">Ecommerce</a></li>
                    <li class="breadcrumb-item "><a href="#" class="nav_link_active">My Account</a></li>
                </ol>
            </nav>
        </div>
    </div>

    <!-- content -->
    <div class="container-fluid g-0">
        <div class="container" style="padding: 48px 0;">
            <div class="row">
                <div class="col-3" style=" border-right: 1px solid #E6E7E8; padding: 36px 0;">
                    <div style="width: 242px;">
                        <a href="/ecommerce/profile-orders" class=" mb-3"
                           style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                            <i class="fa-light fa-cart-shopping" style="margin-right: 10px;"></i>Orders
                        </a>
                        <a href="/ecommerce/profile-wishlist" class="bg_profile_btn mb-3"
                           style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                            <i class="fa-light fa-heart" style="margin-right: 10px;"></i> Wishlist
                        </a>
                        <a href="/ecommerce/profile-address" class="mb-3"
                           style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                            <i class="fa-light fa-truck" style="margin-right: 10px;"></i> Address
                        </a>
                        <a href="/ecommerce/profile-change-password" class="mb-3"
                           style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                            <i class="fa-light fa-key-skeleton" style="margin-right: 10px;"></i>Password
                        </a>
                        <a href="/ecommerce/profile-detail" class="mb-3"
                           style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                            <i class="fa-light fa-user" style="margin-right: 10px;"></i> Account Detail
                        </a>
                        <a href="#" data-bs-toggle="modal" data-bs-target="#ModalLogOut" class="mb-3"
                           style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                            <i class="fa-light fa-right-from-bracket" style="margin-right: 10px;"></i> Logout
                        </a>
                    </div>
                </div>
                <div class="col-9" style="padding: 0px 34px;">
                    <div style="margin-bottom: 24px;">
                        <h5>Wishlist</h5>
                    </div>
                    <c:forEach var="favoriteProduct" items="${listFavoriteProduct}">
                        <!-- Wishlist_card_product -->
                        <div style="width: 670px; padding: 24px 0px; border-bottom: 1px solid #E6E7E8;">
                            <div style="margin-top: 24px;" class="d-flex justify-content-between align-items-center">
                                <div class="text-center" style="width: 80px ; height: 80px; background-color: #F6F6F6;">
                                    <img style="width: 75%;"
                                         src="/resources/image/${productImageService.getFirstProductImageByProductId(favoriteProduct.products).nameImage}"
                                         alt="">
                                </div>

                                <div>
                                    <p style="font-size: 16px; font-weight: 500; margin-bottom: 8px;">
                                        ${favoriteProduct.products.productName}
                                    </p>
                                    <!-- product_cart_color -->
                                    <div style="width: 205px ; height:  24px;">
                                        <div style="font-size: 12px; font-weight: 500; color: #5C5F6A;">
                                            Added on: ${favoriteProduct.created_at}
                                        </div>
                                    </div>
                                    <div style="width: 154px ; height:  24px;">
                                        <a href="/ecommerce/remove-favorite-product?idProduct=${favoriteProduct.products.productId}"
                                           style="color: #000; text-decoration: none; font-size: 12px; font-weight: 500;">
                                            Remove item
                                        </a>
                                    </div>
                                </div>
                                <div>
                                    <div class="d-flex justify-content-between align-items-center"
                                         style="width: 280px;">
                                        <div>
                                            <div style="font-size: 14px; font-weight: 500; padding-bottom: 4px; display: inline-block;">
                                                $${productDetailService.getFirstProduct(favoriteProduct.products).price}
                                            </div>
                                        </div>
                                        <div class="prevent_select"
                                             style=" padding: 6px 24px;border: 1px solid #000 ;border-radius: 4px; display: inline-block;">
                                            <a href="/ecommerce/add-item-cart?productId=${favoriteProduct.products.productId}"
                                               style="text-decoration: none; color: #000; font-size: 14px; font-weight: 500;">Add
                                                to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>
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
    <!-- Modal -->
    <div class="modal fade" id="ModalLogOut" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 400px; margin-top: 180px;">
            <div class="modal-content" style="padding: 30px;">
                <div class="modal-body" style="padding: 0; margin-bottom: 40px;">
                    <h6 style=" font-weight: 600;">Are you sure you want to log out?</h6>
                </div>
                <div class="modal-footer" style="border: none; padding: 0;">
                    <a href="/logout" type="button" style="text-decoration: none;"
                       class="btn text-light bg-dark">Logout</a>
                    <button type="button" class="btn" style="border: 1px solid #5C5F6A;" data-bs-dismiss="modal">
                        Cancel
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- modal_cart -->
    <div class="modal" id="modal_cart" tabindex="-1" aria-labelledby="modal_cartLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable justify-content-end align-items-start"
             style="max-width: 100%;  height: 100%; margin: 0px;">
            <div class="modal-content" style="width: 424px; height: 100%; border-radius: 0%;">
                <div class="modal-header" style="border: none; background-color: #F6F6F6;  padding: 22px;">
                    <h5 class="modal-title" id="modal_cartLabel">Shopping Cart</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <c:if test="${listCartItem.size() > 0}">
                    <div class="modal-body">
                        <c:forEach var="cartItem" items="${listCartItem}">
                            <!-- cart_product -->
                            <div class="cart_product_row" style="border-bottom: 2px solid #F6F6F6; padding: 12px 4px;">
                                <div class="d-flex justify-content-between">
                                    <!-- img_product_cart -->
                                    <div>
                                        <div class="text-center img_product_cart">
                                            <img src="<c:url value="/resources/image/${productImageService.getFirstProductImageByProductId(cartItem.productDetail.productId).nameImage}"/>" style="width: 74%;"
                                                 alt="">
                                        </div>
                                        <div class="delete_product_cart">
                                            <a href="/ecommerce/cart/delete-cart?cartItemId=${cartItem.cartItemId}" style="color: #5C5F6A;"><i class="fa-solid fa-xmark"
                                                                                                                                               style=" font-size: 16px;"></i></a>
                                        </div>
                                    </div>
                                    <!-- product_cart_detail -->
                                    <div class="product_cart">
                                        <p style="font-size: 14px; font-weight: 500;">${cartItem.productDetail.productId.productName}</p>
                                        <div style="display: inline-block;">
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
                                        <p style="font-size: 14px; font-weight: 500; display:inline-block;margin-left: 8px;">
                                            $${cartItem.productDetail.price}</p>
                                    </div>
                                    <!-- product_cart_color -->
                                    <div class="d-flex justify-content-between align-items-center"
                                         style="width: 62px; height: 22px;">
                                        <div style=" padding: 8px; border-radius: 50%; border: 1px solid #5C5F6A; background-color: ${cartItem.productDetail.attributeColor.attributeValue};"></div>
                                        <div style=" font-size: 16px; font-weight: 500; color: #5C5F6A; margin: 0px 6px;">
                                            &#8722;
                                        </div>
                                        <div style=" font-size: 16px; font-weight: 500; color: #5C5F6A;">${cartItem.productDetail.attributeSize.attributeValue}</div>
                                    </div>
                                </div>
                            </div>

                        </c:forEach>

                    </div>
                    <div class="modal-footer" style="border: none; align-items: normal; justify-content: unset;">
                        <div class="d-flex justify-content-between"
                             style=" border-top: 2px solid #F6F6F6; width: 100%;padding: 12px; margin-bottom: 12px;">
                            <div style="font-size: 14px; font-weight: 500;">Total</div>
                            <div style="font-size: 14px; font-weight: 500;">$${totalPrice}</div>
                        </div>
                        <button class="btn bg-black" style="font-size: 14px; font-weight: 500; width: 100%; height: 40px;">
                            <a href="/ecommerce/cart" style="text-decoration: none; color: #fff;">View Cart</a>
                        </button>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="/resources/js/script.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
</body>
</html>