<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Krist | product detail</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
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
    <!-- linknav -->
    <div class="container" style="padding: 18px;">
        <nav style="--bs-breadcrumb-divider: '>'; line-height: 40px;" aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item "><a href="./Home.html" class="nav_link">Home</a></li>
                <li class="breadcrumb-item "><a href="#" class="nav_link_active">product detail</a></li>
            </ol>
        </nav>
    </div>

    <!-- product_detail -->
    <div class="container d-flex  justify-content-between" style="margin-bottom: 80px;">
        <div class="content_left"
             style="width: 512px; height: 548px; background-color: #F6F6F6; border-radius: 6px; margin-right: 10px;">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <c:forEach var="imageProduct" begin="0" end="${listImageProduct.size() -1}" varStatus="status">
                        <button type="button" data-bs-target="#carouselExampleIndicators"
                                data-bs-slide-to="${status.index}" ${status.index == 0? 'class="active" aria-current="true"' : ""}
                                aria-label="Slide ${status.index + 1}"></button>
                    </c:forEach>
                </div>
                <div class="carousel-inner" style="padding: 28px;">
                    <c:forEach var="imageProduct" items="${listImageProduct}" varStatus="status">
                        <div class="carousel-item ${status.index == 0 ? 'active' : ''} text-center">
                            <img src="/resources/image/${imageProduct.nameImage}" style="width: 80%;" alt="...">
                        </div>
                    </c:forEach>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <div class="content_right" style="width: 512px; height: 548px; margin-right: 108px;">
            <div class="d-flex  justify-content-between" style="margin-bottom: 12px;">
                <div>
                    <h3>${productDetail.productName}</h3>
                </div>
                <div>
                    <a href="#" style="color: #000;" data-bs-toggle="modal" data-bs-target="#modal_share"><i
                            class="fa-solid fa-share-nodes"></i></a>
                </div>
            </div>
            <div style="color: #5C5F6A;  display: inline-block; margin-bottom: 12px;">
                <p style="line-height: 24px; font-weight: 500; background-color: #F6F6F6; padding: 2px 16px; border-radius: 38px;font-size: 12px; display: inline-block; margin-right: 8px;">
                    <i class="fa-solid fa-star"></i> ${rating} - ${listReview.size()} Reviews </p>

                <p style="padding: 4px 12px; font-size: 12px; font-weight: 500; border: 1px solid #E6E7E8; border-radius: 40px; display: inline-block; display: inline-block;">
                    IN STOCK</p>
            </div>
            <div style="margin-bottom: 12px;">
                <h4 id="price-product"></h4>
            </div>
            <div>
                <form id="productForm">
                    <div style="margin-bottom: 18px;">
                        <div>
                            <p style="font-size: 12px; color: #5C5F6A; font-weight: 500; line-height: 24px; letter-spacing: 0.6px;">
                                AVAILABLE COLORS
                            </p>
                        </div>
                        <div>
                            <!-- list_color -->
                            <c:forEach var="color" items="${ListColorProductDetail}" varStatus="i">
                                <div class="form-check form-check-inline" style="padding: 0; margin-right: 12px;">
                                    <input class="form-check-input radio_color" type="radio" name="color"
                                        ${i.index == 0 ? "checked" : ""}
                                           id="color${color.attributeId}"
                                           value="${color.attributeId}" style="display: none;">
                                    <label class="form-check-label lable_radio_color ${i.index == 0 ? "selected_radio_color" : ""}"
                                           for="color${color.attributeId}"
                                           style="padding: 2px;">
                                        <p style="margin: 0; padding: 9px; border-radius: 50%; background-color: ${color.attributeValue}; border:1px solid #E6E7E8; cursor: pointer;"></p>
                                    </label>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div style="margin-bottom: 18px;">
                        <div>
                            <p style="font-size: 12px; color: #5C5F6A; font-weight: 500; line-height: 24px; letter-spacing: 0.6px;">
                                SELECT SIZE
                            </p>
                        </div>
                        <!-- list_size -->
                        <div id="size-options">
                            <c:forEach var="size" items="${ListSizeProductDetail}" varStatus="i">
                                <div class="form-check form-check-inline" style="padding: 0; margin-right: 12px;">
                                    <input class="form-check-input radio_size" type="radio" name="size"
                                           id="size${size.attributeId}"
                                        ${i.index == 0 ? "checked" : ""}
                                           value="${size.attributeId}" style="display: none;">
                                    <label class="form-check-label lable_radio_size "
                                           for="size${size.attributeId}"
                                           style="padding: 10px 16px; cursor: pointer; border-radius: 4px;">
                                        <p style="margin: 0; padding: 0; font-size: 12px; font-weight: 500;">${size.attributeValue}</p>
                                    </label>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </form>

                <div style="margin-bottom: 32px;">
                    <div>
                        <p style="font-size: 12px; color: #5C5F6A; font-weight: 500; line-height: 24px; letter-spacing: 0.6px;">
                            QUANTITY</p>
                    </div>
                    <div class="product_cart">
                        <div class="d-flex justify-content-between align-items-center"
                             style="padding: 8px 18px; border: 1px solid #E6E7E8; border-radius: 4px; width: 162px;">
                            <div class="btn_sub2" style="cursor: pointer;">
                                <button type="button" style="background-color: #fff; border: none;">
                                    &#8722;
                                </button>
                            </div>
                            <div id="quantity" class="quantity_number2">
                                1
                            </div>
                            <div class="btn_plus2" style="cursor: pointer;">
                                <button type="button" style="background-color: #fff; border: none;">
                                    &#43;
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div>
                        <div style=" display: inline-block;">
                            <a href="#" class="btn" id="linkAdd"
                               style=" color: #fff; text-decoration: none; background-color: #000; font-size: 14px; font-weight: 500; border-radius: 4px; padding: 12px 88px; margin-right: 8px;">
                                Add
                                to cart
                            </a>
                        </div>
                        <div style="display: inline-block;">
                            <c:if test="${favoroiteProductService.isProducttAndCustomerExist(productDetail, customer)}">
                                <a href="/ecommerce/remove-favorite-product?idProduct=${productDetail.productId}"
                                   style="color: #000; text-decoration: none;border: 1px solid #E6E7E8; font-weight: 500; border-radius: 4px; padding: 10px 12px">
                                    <i class="fa-solid fa-heart btn_whish_add" style=" font-size: 18px;"></i>
                                </a>
                            </c:if>
                            <c:if test="${!favoroiteProductService.isProducttAndCustomerExist(productDetail, customer)}">
                                <a href="/ecommerce/add-favorite-product?idProduct=${productDetail.productId}"
                                   style="color: #000; text-decoration: none;border: 1px solid #E6E7E8; font-weight: 500; border-radius: 4px; padding: 10px 12px">
                                    <i class="fa-regular fa-heart btn_whish_add" style=" font-size: 18px;"></i>
                                </a>
                            </c:if>

                        </div>
                    </div>
                </div>
            </div>
            <div>
                <p style="text-transform: uppercase; font-size: 12px; font-weight: 500; color: #5C5F6A; margin: 0; padding: 22px 0px 0px 0px;">
                    — Free shipping on orders $100+</p>
            </div>
        </div>

    </div>
    <!-- content -->
    <!-- detail_review -->
    <div class="container d-flex  align-items-start" style="padding: 28px 16px; margin-bottom: 28px;">
        <!-- tab -->
        <div style="width: 248px; display: inline-block; margin-right: 56px;">
            <div class="slected_tab_detail" id="btn_detail"
                 style="font-size: 14px; font-weight: 500; padding: 8px 168px 8px 12px; display: inline-block; margin-bottom: 12px; border-radius: 4px;">
                <i class="fa-solid fa-ellipsis" style="margin-right: 8px;"></i> Details
            </div>
            <div class="non_select_tab_detail" id="btn_review"
                 style="font-size: 14px; font-weight: 500; padding: 8px 157px 8px 12px; display: inline-block; margin-bottom: 12px; border-radius: 4px;">
                <i class="fa-regular fa-star" style="margin-right: 8px;"></i> Reviews
            </div>
        </div>
        <!-- view_detail -->
        <div class="display_block" id="view_detail" style=" width: 727px;margin-left: 28px;">
            <h5 style="margin-bottom: 18px;">Detail</h5>
            <p style="font-size: 14px; font-weight: 400; color: #5C5F6A;">
                ${productDetail.description}
            </p>
        </div>
        <!-- view_rivew -->
        <c:if test="${listReview.size() <= 0}">
            <div class="display_none" id="view_review" style=" width: 727px;margin-left: 28px;">
                <div class="btn" data-bs-toggle="modal" data-bs-target="#modal_review"
                     style="border: 1px solid #000; font-size: 14px; font-weight: 500; margin-bottom: 28px;">Write a
                    review
                </div>
            </div>
        </c:if>
        <c:if test="${listReview.size() > 0}">
            <div class="display_none" id="view_review" style=" width: 727px;margin-left: 28px;">
                <h5 style="margin-bottom: 18px;">Reviews</h5>
                <div style="margin-bottom: 12px;">
                    <h2 style="display: inline-block; margin-right: 12px;">${rating}</h2>
                    <p style="display: inline-block; color: #5C5F6A; font-size: 14px;">&#8722; ${listReview.size()}
                        reviews</p>
                </div>
                <div class="btn" data-bs-toggle="modal" data-bs-target="#modal_review"
                     style="border: 1px solid #000; font-size: 14px; font-weight: 500; margin-bottom: 28px;">Write a
                    review
                </div>
                <hr style="margin-bottom: 18px;">
                <c:forEach var="review" items="${listReview}">
                    <!-- row_review -->
                    <div class="d-flex align-items-start justify-content-between"
                         style="margin-bottom: 18px;padding-left: 8px;">
                        <div>
                            <div class="d-flex justify-content-center align-items-center"
                                 style="background-color: #f6f6f6; width: 68px; height: 68px; border-radius: 4px;">
                                <div>
                                    <div class="avt_icon" id="avt_entity"
                                         data-category-name="${review.customerDetail.nameCustomer}"
                                         data-bg-img="${review.customerDetail.customerId.imageAvatar}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div style="margin-right: 52px; width: 452px">
                            <p style="font-size: 14px; font-weight: 500; margin-bottom: 8px;">${review.customerDetail.nameCustomer}</p>
                            <p style="text-transform: uppercase; font-size: 12px; font-weight: 500; color: #5C5F6A;">
                                    ${review.reviewDate}
                            </p>
                            <p style="font-size: 14px; font-weight: 400; color: #5C5F6A;">
                                    ${review.comment}
                            </p>
                        </div>
                        <div style="font-size: 12px;">
                            <c:forEach var="i" begin="1" end="${review.rating}">
                                <i class="fa-solid fa-star"></i>
                            </c:forEach>
                            <c:forEach var="i" begin="1" end="${5 - review.rating}">
                                <i class="fa-regular fa-star"></i>
                            </c:forEach>
                        </div>
                    </div>
                </c:forEach>
                <div class="text-center" style="margin-top: 36px;">
                    <div class="btn"
                         style="border: 1px solid #B6B7BC; font-size: 14px; font-weight: 500; margin-bottom: 28px; color: #5C5F6A;">
                        Load more reviews
                    </div>
                </div>
            </div>
        </c:if>
    </div>
    <!-- similar_product -->
    <div class="container" style="margin-bottom: 28px;">
        <p style="font-size: 24px; font-weight: 700;">You might also like</p>
        <p style="font-size: 12px; font-weight: 500; color: #878A92; margin-bottom: 22px;">SIMILAR PRODUCTS</p>
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
                            <a href="/ecommerce/remove-favorite-product?idProduct=${product.productId}"
                               style="color: #0E1422">
                                <i class="fa-solid fa-heart btn_whish_add" style="font-size: 18px;"></i>
                            </a>
                        </c:if>
                        <c:if test="${!favoroiteProductService.isProducttAndCustomerExist(product, customer)}">
                            <a href="/ecommerce/add-favorite-product?idProduct=${product.productId}"
                               style="color: #0E1422">
                                <i class="fa-regular fa-heart btn_whish_add" style="font-size: 18px;"></i>
                            </a>
                        </c:if>
                    </div>
                    <!-- btn_addcart -->
                    <a href="/ecommerce/add-item-cart?productDetailId=${productDetailService.getFirstProduct(product).productDetailId}">
                        <div class="text-center btn_addcart display_none"
                             style="background-color: #000; border-radius: 0px 0px 5px 5px; padding: 8px;">
                            <p style="font-size: 16px; color: #fff; padding: 0; margin: 0;">Add to cart<i
                                    class="fa-solid fa-cart-plus" style="padding-left: 18px;"></i></p>
                        </div>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>

    <!-- footer -->
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
<!-- modal_share -->
<div class="modal fade" id="modal_share" tabindex="-1" aria-labelledby="modal_shareLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="width: 424px; height: 282px; padding: 12px;">
            <div class="modal-header" style="border: none;">
                <h5 class="modal-title" id="modal_shareLabel">Copy Link</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div style="margin-bottom: 28px;">
                    <div style="display: inline-block; margin-right: 12px;">
                        <input type="text" class="form-control " id="inputUrl" style="width: 294px;">
                    </div>
                    <div id="btn_copy_link"
                         style="display: inline-block; border:  1px solid #E6E7E8;cursor: pointer; border-radius: 6px; padding: 6px 12px;">
                        <i class="fa-regular fa-copy"></i></div>
                </div>
                <div>
                    <h5>Share</h5>
                    <div>
                        <i class="fa-brands fa-facebook-f"
                           style="cursor: pointer;margin:18px 18px 0px 0px; font-size: 22px; " data-bs-toggle="tooltip"
                           data-bs-placement="bottom" title="Facebook"></i>
                        <i class="fa-brands fa-x-twitter"
                           style="cursor: pointer;margin:18px 18px 0px 0px; font-size: 22px; " data-bs-toggle="tooltip"
                           data-bs-placement="bottom" title="Twitter"></i>
                        <i class="fa-brands fa-facebook-messenger"
                           style="cursor: pointer;margin:18px 18px 0px 0px; font-size: 22px; " data-bs-toggle="tooltip"
                           data-bs-placement="bottom" title="Messenger"></i>
                        <i class="fa-brands fa-pinterest-p"
                           style="cursor: pointer;margin:18px 18px 0px 0px; font-size: 22px; " data-bs-toggle="tooltip"
                           data-bs-placement="bottom" title="Pinterest"></i>
                        <i class="fa-brands fa-whatsapp"
                           style="cursor: pointer;margin:18px 18px 0px 0px; font-size: 22px; " data-bs-toggle="tooltip"
                           data-bs-placement="bottom" title="Whatsapp"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- modal_share -->
<!-- modal_review -->
<div class="modal fade" id="modal_review" tabindex="-1" aria-labelledby="modal_reviewLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content" style="padding: 20px; width: 494px; height: 578px;">
            <div class="modal-header">
                <h5 class="modal-title" id="modal_reviewLabel">Write Review</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="post" action="/ecommerce/product-detail/add-comment?idProduct=${productDetail.productId}">
                    <div class="mb-3">
                        <label for="InputEmail" class="form-label">Email</label>
                        <input type="email" class="form-control" id="InputEmail" name="email"
                               value="${customer.userId.email}">
                    </div>
                    <div class="mb-3">
                        <label for="InputFullName" class="form-label">Full name</label>
                        <select class="form-select" id="InputFullName" name="customerDetail">
                            <C:forEach var="customerDetail" items="${listCustomerDetail}" varStatus="i">
                                <option ${i.index == 0 ? "selected" : ""}
                                        value="${customerDetail.detailId}">${customerDetail.nameCustomer}</option>
                            </C:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="reviewTextArea" class="form-label">Review</label>
                        <textarea class="form-control" id="reviewTextArea" style="height: 100px"
                                  name="comment"></textarea>
                    </div>
                    <div class="mb-3">
                        <div class="form-check form-check-inline" style="padding: 0; margin-right: 12px;">
                            <input class="form-check-input" type="radio" name="poinReview" id="poinReview1" value="1"
                                   style="display: none;" checked>
                            <label class="form-check-label" for="poinReview1">
                                <i class="fa-solid fa-star number_star_review"
                                   style="font-size: 16px; cursor: pointer; color: #5C5F6A;"></i>
                            </label>
                        </div>
                        <div class="form-check form-check-inline" style="padding: 0; margin-right: 12px;">
                            <input class="form-check-input" type="radio" name="poinReview" id="poinReview2" value="2"
                                   style="display: none;">
                            <label class="form-check-label" for="poinReview2">
                                <i class="fa-regular fa-star number_star_review"
                                   style="font-size: 16px; cursor: pointer; color: #5C5F6A;"></i>
                            </label>
                        </div>
                        <div class="form-check form-check-inline" style="padding: 0; margin-right: 12px;">
                            <input class="form-check-input" type="radio" name="poinReview" id="poinReview3" value="3"
                                   style="display: none;">
                            <label class="form-check-label" for="poinReview3">
                                <i class="fa-regular fa-star number_star_review"
                                   style="font-size: 16px; cursor: pointer; color: #5C5F6A;"></i>
                            </label>
                        </div>
                        <div class="form-check form-check-inline" style="padding: 0; margin-right: 12px;">
                            <input class="form-check-input" type="radio" name="poinReview" id="poinReview4" value="4"
                                   style="display: none;">
                            <label class="form-check-label" for="poinReview4">
                                <i class="fa-regular fa-star number_star_review"
                                   style="font-size: 16px; cursor: pointer; color: #5C5F6A;"></i>
                            </label>
                        </div>
                        <div class="form-check form-check-inline" style="padding: 0; margin-right: 12px;">
                            <input class="form-check-input" type="radio" name="poinReview" id="poinReview5" value="5"
                                   style="display: none;">
                            <label class="form-check-label" for="poinReview5">
                                <i class="fa-regular fa-star number_star_review"
                                   style="font-size: 16px; cursor: pointer; color: #5C5F6A;"></i>
                            </label>
                        </div>
                    </div>
                    <div class="text-center" style="margin-top: 36px;">
                        <button type="submit" class="btn bg-black"
                                style="color: #fff; padding: 8px 68px; font-size: 14px;">Submit Your Review
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- modal_review -->

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
                                        <img src="<c:url value="/resources/image/${productImageService.getFirstProductImageByProductId(cartItem.productDetail.productId).nameImage}"/>"
                                             style="width: 74%;"
                                             alt="">
                                    </div>
                                    <div class="delete_product_cart">
                                        <a href="/ecommerce/cart/delete-cart?cartItemId=${cartItem.cartItemId}"
                                           style="color: #5C5F6A;"><i class="fa-solid fa-xmark"
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
                                                <button type="button" style="background-color: #fff; border: none;"
                                                        onclick="updateQuantity(${cartItem.productDetail.productDetailId}, 'decrease')">
                                                    &#8722;
                                                </button>
                                            </div>
                                            <div id="quantity-${cartItem.productDetail.productDetailId}"
                                                 class="quantity_number">
                                                    ${cartItem.quantity}
                                            </div>
                                            <div class="btn_plus" style="cursor: pointer;">
                                                <button type="button" style="background-color: #fff; border: none;"
                                                        onclick="updateQuantity(${cartItem.productDetail.productDetailId}, 'increase')">
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
<!-- modal_cart -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="<c:url value="/resources/js/script.js"/>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<%--jquery logic detail product--%>
<script>
    $(document).ready(function() {
        // Sự kiện thay đổi màu sắc sản phẩm
        $('input[name="color"]').change(handleColorChange);

        // Thực hiện logic cập nhật kích thước khi trang được tải
        var selectedColor = $('input[name="color"]:checked').val();
        if (selectedColor) {
            handleColorChange.call($('input[name="color"]:checked'));
        }

        // Sự kiện thay đổi kích thước sản phẩm
        $('input[name="size"]').change(updateProductDetails);

        function handleColorChange() {
            var selectedColor = $(this).val();

            // Gọi API để lấy danh sách kích thước tương ứng với màu được chọn
            $.ajax({
                url: '/ecommerce/product-detail/find-size',
                method: 'GET',
                data: { colorId: selectedColor },
                success: function(response) {
                    updateSizeOptions(response);
                },
                error: function(error) {
                    console.log(error);
                }
            });
        }

        function updateSizeOptions(sizes) {
            // Vô hiệu hóa tất cả các tùy chọn kích thước
            $('#size-options input[type="radio"]').prop('disabled', true).prop('checked', false);
            $('#size-options label').addClass('disabled');
            $('#size-options label').removeClass('selected_radio_size');

            // Bật lại các tùy chọn kích thước tương ứng với màu được chọn
            $.each(sizes, function(index, sizeId) {
                var $sizeInput = $('#size' + sizeId);
                var $sizeLabel = $sizeInput.next('label');

                $sizeInput.prop('disabled', false);
                $sizeLabel.removeClass('disabled');

                // Nếu đây là mục đầu tiên trong danh sách kích thước, chọn nó
                if (index == 0) {
                    $sizeInput.prop('checked', true);
                    $sizeLabel.addClass('selected_radio_size');
                }
            });

            // Cập nhật chi tiết sản phẩm sau khi cập nhật kích thước
            updateProductDetails();
        }

        function updateProductDetails() {
            var size = $('input[name="size"]:checked').val();
            var color = $('input[name="color"]:checked').val();

            if (size && color) {
                $.ajax({
                    url: '/ecommerce/product-detail/find-detail',
                    type: 'GET',
                    data: {
                        sizeId: size,
                        colorId: color
                    },
                    success: function(response) {
                        $('#price-product').text('$ ' + response.price);
                        $('#linkAdd').attr('href', "/ecommerce/add-item-cart?productDetailId=" + response.productDetailId + "&quantity=1");
                        $('#quantity').text('1');
                    },
                    error: function(error) {
                        console.log(error);
                    }
                });
            }
        }
    });
</script>

<%--jquery update quantity cart--%>
<script>
    function updateQuantity(productId, action) {
        $.ajax({
            url: '/ecommerce/' + action,
            type: 'POST',
            data: {productId: productId},
            success: function (response) {
                let quantityElement = $('#quantity-' + productId);
                let currentQuantity = parseInt(quantityElement.text());
                if (action === 'increase') {
                    quantityElement.text(currentQuantity + 1);
                } else if (action === 'decrease' && currentQuantity > 1) {
                    quantityElement.text(currentQuantity - 1);
                }
            },
            error: function (error) {
                console.log(error);
            }
        });
    }
</script>
<script>
    //xử lý hiển thị tên trên avt
    document.addEventListener("DOMContentLoaded", function () {
        var entityElements = document.querySelectorAll(".avt_icon");
        entityElements.forEach(function (entityElement) {
            var categoryName = entityElement.getAttribute("data-category-name");
            var bgImg = entityElement.getAttribute("data-bg-img");
            if (bgImg) {
                entityElement.style.backgroundImage = 'url(/resources/image/' + bgImg + ')';
            } else if (categoryName) {
                var initials = categoryName.split(' ').map(word => word.charAt(0)).join('');
                entityElement.textContent = initials;
            }
        });
    });
</script>
</body>
</html>