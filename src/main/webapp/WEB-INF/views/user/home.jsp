<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Krist | home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/all.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-thin.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-solid.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-regular.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-light.css">
    <link rel="stylesheet" href="<c:url value="/resources/css/styles.css"/>">
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
                <div class="logo"><img src="<c:url value="/resources/image/logo.png"/>" alt="logo"></div>
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
    <!-- Banner -->
    <div class="container-fulid" style="background-color: #F6F6F6; height: 440px; margin:0px 0px 72px 0px;">
        <div class="container d-flex align-items-center justify-content-between">
            <div>
                <h2 style="color: #000; margin-bottom: 18px;">Fresh Arrivals Online</h2>
                <p style="color: #5C5F6A; font-size: 16px; margin-bottom: 54px;">Discover Our Newest Collection
                    Today.</p>
                <div style="background-color: #000; padding: 8px 26px; display: inline-block; border-radius: 5px;">
                    <a href="/ecommerce/categories" style="text-decoration: none; color:#fff; font-size: 18px;"> View
                        Collection &#8594</a>
                </div>
            </div>
            <div style="width: 300px;" class="banner">
                <div class="ellipse">
                </div>
                <div>
                    <img src="<c:url value="/resources/image/banner.png"/>" alt="banner"
                         style="width: 100%; display: block;">
                </div>
            </div>
        </div>
    </div>
    <!-- Features -->
    <div class="container container d-flex align-items-center justify-content-between"
         style="padding: 12px; margin-bottom: 88px;">
        <div style="width: 328px; height: 218px;">
            <div style="background-color: #F6F6F6;padding: 15px 15px; display: inline-block; border-radius: 50%;">
                <i class="fa-light fa-truck" style="font-size: 24px;"></i>
            </div>
            <h5 style="margin: 24px 0px;">Free Shipping</h5>
            <p>Upgrade your style today and get FREE shipping on all orders! Don't miss out.</p>
        </div>
        <div style="width: 328px; height: 218px;">
            <div style="background-color: #F6F6F6;padding: 15px 15px; display: inline-block; border-radius: 50%;">
                <i class="fa-light fa-medal" style="font-size: 24px;"></i>
            </div>
            <h5 style="margin: 24px 0px;">Satisfaction Guarantee</h5>
            <p>Shop confidently with our Satisfaction Guarantee: Love it or get a refund.</p>
        </div>
        <div style="width: 328px; height: 218px;">
            <div style="background-color: #F6F6F6;padding: 15px 15px; display: inline-block; border-radius: 50%;">
                <i class="fa-light fa-shield-halved" style="font-size: 24px;"></i>
            </div>
            <h5 style="margin: 24px 0px;">Secure Payment</h5>
            <p>Your security is our priority. Your payments are secure with us.</p>
        </div>
    </div>
    <!-- BestSeller -->
    <div class="container" style="margin-bottom: 88px;">
        <div class="title_bestseller text-center" style="margin-bottom: 68px;">
            <p style="color: #5C5F6A; font-size: 14px;">SHOP NOW</p>
            <h3>Best Selling</h3>
        </div>
        <div class="product container d-flex  justify-content-between">
            <c:forEach var="product" items="${listTop4Product}">
                <div class="card_product" style="width: 264px; padding: 10px 6px;">
                    <div class="text-center img_product"
                         style="background-color: #F6F6F6; margin-bottom: 18px; border-radius: 5px;">
                        <img src="/resources/image/${productImageService.getFirstProductImageByProductId(product).nameImage}"
                             alt="Product Image" style="background-color: #f6f6f6"/>
                    </div>

                    <div class="card-body">
                        <p style="font-weight: 500; font-size: 15px;">
                            <a href="/ecommerce/product-detail?productId=${product.productId}"
                               style="color: #000000; text-decoration: none; cursor: pointer">${product.productName}</a>
                        </p>
                        <div>
                            <p style="padding: 4px 12px; font-size: 12px; font-weight: 500; border: 1px solid #E6E7E8; border-radius: 40px; display: inline-block;">
                                IN STOCK</p>
                            <p style="display: inline-block; font-size: 14px; font-weight: 500; color: #5C5F6A; padding-left: 12px;">
                                $${productDetailService.getFirstProduct(product).price}</p>
                        </div>
                    </div>
                    <!-- Whishlist -->
                    <div class="whishlist display_none">
                        <c:if test="${favoroiteProductService.isProducttAndCustomerExist(product, customer)}">
                            <a  href="/ecommerce/remove-favorite-product?idProduct=${product.productId}" style="color: #0E1422">
                                <i class="fa-solid fa-heart btn_whish_add" style="font-size: 18px;"></i>
                            </a>
                        </c:if>
                        <c:if test="${!favoroiteProductService.isProducttAndCustomerExist(product, customer)}">
                            <a  href="/ecommerce/add-favorite-product?idProduct=${product.productId}" style="color: #0E1422">
                                <i class="fa-regular fa-heart btn_whish_add" style="font-size: 18px;"></i>
                            </a>
                        </c:if>
                    </div>
                    <!-- btn_addcart -->
                    <a href="/ecommerce/add-item-cart?productDetailId=${productDetailService.getFirstProduct(product).productDetailId}">
                        <div class="text-center btn_addcart display_none"
                             style="background-color: #000; border-radius: 0px 0px 5px 5px; padding: 8px;">
                            <p  style="font-size: 16px; color: #fff; padding: 0; margin: 0;">Add to cart<i
                                    class="fa-solid fa-cart-plus" style="padding-left: 18px;"></i></p>
                        </div>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
    <!-- Categories -->
    <div class="container-fulid" style="background-color: #F6F6F6; height: 304px; margin:0px 0px 72px 0px;">
        <div class="container d-flex align-items-center justify-content-between" style="height: 304px;">
            <div>
                <h3 style="color: #000; margin-bottom: 18px;">Browse Our Fashion Paradise!</h3>
                <p style="color: #5C5F6A; font-size: 14px; margin-bottom: 36px;">Step into a world of style and explore
                    our diverse collection of clothing categories.</p>
                <div style="background-color: #000; padding: 8px 26px; display: inline-block; border-radius: 5px;">
                    <a href="#" style="text-decoration: none; color:#fff; font-size: 14px;"> Start Browsing &#8594</a>
                </div>
            </div>
            <div style="width: 300px;">
                <div>
                    <img src="<c:url value="/resources/image/Category_img.png"/>" alt="banner"
                         style="width: 78%; display: block;">
                </div>
            </div>
        </div>
    </div>
    <!-- Featured -->
    <div class="container" style="margin-bottom: 88px;">
        <div class="title_bestseller text-center" style="margin-bottom: 68px;">
            <h3>Featured</h3>
        </div>
        <div class="product container d-flex  justify-content-between">
            <c:forEach var="product" items="${listTop4Product}">
                <div class="card_product" style="width: 264px; padding: 10px 6px;">
                    <div class="text-center img_product"
                         style="background-color: #F6F6F6; margin-bottom: 18px; border-radius: 5px;">
                        <img src="/resources/image/${productImageService.getFirstProductImageByProductId(product).nameImage}"
                             alt="Product Image" style="background-color: #f6f6f6"/>
                    </div>

                    <div class="card-body">
                        <p style="font-weight: 500; font-size: 15px;">
                            <a href="/ecommerce/product-detail?productId=${product.productId}"
                               style="color: #000000; text-decoration: none; cursor: pointer">${product.productName}</a>
                        </p>
                        <div>
                            <p style="padding: 4px 12px; font-size: 12px; font-weight: 500; border: 1px solid #E6E7E8; border-radius: 40px; display: inline-block;">
                                IN STOCK</p>
                            <p style="display: inline-block; font-size: 14px; font-weight: 500; color: #5C5F6A; padding-left: 12px;">
                                $${productDetailService.getFirstProduct(product).price}</p>
                        </div>
                    </div>
                    <!-- Whishlist -->
                    <div class="whishlist display_none">
                        <c:if test="${favoroiteProductService.isProducttAndCustomerExist(product, customer)}">
                            <a  href="/ecommerce/remove-favorite-product?idProduct=${product.productId}" style="color: #0E1422">
                                <i class="fa-solid fa-heart btn_whish_add" style="font-size: 18px;"></i>
                            </a>
                        </c:if>
                        <c:if test="${!favoroiteProductService.isProducttAndCustomerExist(product, customer)}">
                            <a  href="/ecommerce/add-favorite-product?idProduct=${product.productId}" style="color: #0E1422">
                                <i class="fa-regular fa-heart btn_whish_add" style="font-size: 18px;"></i>
                            </a>
                        </c:if>
                    </div>
                    <!-- btn_addcart -->
                    <a href="/ecommerce/add-item-cart?productDetailId=${productDetailService.getFirstProduct(product).productDetailId}">
                        <div class="text-center btn_addcart display_none"
                             style="background-color: #000; border-radius: 0px 0px 5px 5px; padding: 8px;">
                            <p  style="font-size: 16px; color: #fff; padding: 0; margin: 0;">Add to cart<i
                                    class="fa-solid fa-cart-plus" style="padding-left: 18px;"></i></p>
                        </div>
                    </a>
                </div>
            </c:forEach>
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
        <div>
            <!-- contact -->
            <div class="container d-flex align-items-center" style="padding:72px 0 120px;">
                <div style="width: 272px; margin-right: 142px;">
                    <div class="d-flex align-items-center" style="margin-bottom: 12px;">
                        <div style="padding: 8px 14px; margin-right: 8px; border-radius: 5px; border: 1px solid #E6E7E8;">
                            <img src="<c:url value="/resources/image/logo_black.png"/>" alt="logo">
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
                    <p style="color: #5C5F6A; font-size: 14px; font-weight: 500; margin-bottom: 22px;">ACCEPTED
                        PAYMENTS</p>
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
<!-- js -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="<c:url value="/resources/js/script.js"/>"></script>
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