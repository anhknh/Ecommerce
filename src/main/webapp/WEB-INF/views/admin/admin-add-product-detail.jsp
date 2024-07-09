<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/all.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-thin.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-solid.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-regular.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.5.2/css/sharp-light.css">
    <link rel="stylesheet" href="/resources/css/styles.css">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            overflow: hidden; /* Ẩn thanh cuộn của body */
        }

        .main {
            height: 100%;
            display: flex;
        }

        .col-10 {
            height: 100vh; /* Đảm bảo chiều cao bằng chiều cao màn hình */
            overflow-y: auto; /* Cho phép cuộn nội dung khi vượt quá chiều cao */
            padding: 12px 32px 48px;
            background-color: #f6f6f6;
        }
    </style>
</head>
<body style="overflow: hidden;">
<div class="main">
    <div class="container-fluid g-0">
        <div class="row g-0">
            <div class="col-2" style="height: 100vh;">
                <div style="height: 72px; margin-bottom: 42px;"
                     class="d-flex align-items-center justify-content-center">
                    <div>
                        <img src="/resources/image/logo_black.png" alt="logo">
                    </div>
                    <div style="font-size: 20px; font-weight: 800; margin-left: 12px;">
                        Admin
                    </div>
                </div>
                <div style="padding: 0px 22px 28px; border-bottom: 1px solid #E9E9EB;" class="mb-4">
                    <a href="/ecommerce/admin/dashbroad" class=" mb-3"
                       style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                        <i class="fa-light fa-objects-column" style="margin-right: 10px;"></i>Dashboard
                    </a>
                    <a href="/ecommerce/admin/product" class="bg_profile_btn mb-3"
                       style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                        <i class="fa-regular fa-box-archive" style="margin-right: 10px;"></i> Products
                    </a>
                    <a href="/ecommerce/admin/orders" class="mb-3"
                       style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                        <i class="fa-light fa-cart-shopping" style="margin-right: 10px;"></i> Orders
                    </a>
                    <a href="/ecommerce/admin/customer" class="mb-3"
                       style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                        <i class="fa-light fa-user-group" style="margin-right: 10px;"></i>Customers
                    </a>
                    <a href="/ecommerce/admin/reviews" class="mb-3"
                       style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                        <i class="fa-light fa-star" style="margin-right: 10px;"></i> Reviews
                    </a>
                    <a href="/ecommerce/admin/setting" class=" mb-3"
                       style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                        <i class="fa-light fa-gear" style="margin-right: 10px;"></i> Settings
                    </a>
                </div>
                <div id="drop_right" style="padding: 0px 22px 28px;  cursor: pointer;">
                    <p class="mb-3 "
                       style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                        <i class="fa-regular fa-plus" style="margin-right: 10px;"></i> Extras
                    </p>
                    <div id="menu_right" class="display_none">
                        <ul style="list-style: none; border: 1px solid #E9E9EB; border-radius: 5px;  padding: 12px; background-color: #fff; width: 200px;">
                            <li style="padding: 8px;"><a href="/ecommerce/admin/categories"
                                                         style="text-decoration: none; color: #000;">Categories</a></li>
                            <li style="padding: 8px;"><a href="/ecommerce/admin/size"
                                                         style="text-decoration: none; color: #000;">Size</a></li>
                            <li style="padding: 8px;"><a href="/ecommerce/admin/color"
                                                         style="text-decoration: none; color: #000;">Color</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-10">
                <!-- navigator_link -->
                <div class="d-flex justify-content-between align-items-center"
                     style="height: 72px; margin-bottom: 18px;">
                    <div>
                        <nav style="--bs-breadcrumb-divider: '>'; line-height: 40px;" aria-label="breadcrumb">
                            <ol class="breadcrumb" style="height: 40px; margin: 0px;">
                                <li class="breadcrumb-item "><a href="/ecommerce/admin/dashbroad"
                                                                class="nav_link">Admin</a></li>
                                <li class="breadcrumb-item "><a href="/ecommerce/admin/product" class="nav_link_active">Product
                                    detail</a></li>
                            </ol>
                        </nav>
                    </div>
                    <div>
                        <a href="../login.html" style="text-decoration: none; color: #000; font-size: 20px;"><i
                                class="fa-thin fa-arrow-right-from-bracket"></i></a>
                    </div>
                </div>
                <div style="background-color: #fff; border-radius: 6px;; border: 1px solid #f6f7f8;">
                    <!-- headre_content -->
                    <div style="padding-bottom: 28px;  padding: 24px 40px; border-bottom: 1px solid #E9E9EB;">
                        <h5>${productDetail != null ? "Save Product detail" : "Add Product detail"} - ${product.productName}</h5>
                    </div>
                    <div style="padding: 40px;">
                        <form method="post" action="/ecommerce/admin/product-detail-manage/add?productId=${product.productId}">
                            <div class="d-flex mb-4">
                                <div class=" ms-5" style="width: 320px;">
                                    <div class="mb-3 d-none">
                                        <label class="form-label" for="idDetail_input">Id Detail</label>
                                        <input name="productDetailId" type="number" id="idDetail_input" class="form-control" value="${productDetail.productDetailId}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="price_input">Price</label>
                                        <input name="price" type="number" id="price_input" class="form-control" value="${productDetail.price}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="stock_input">Active status</label>
                                        <select name="status" id="stock_input" class="form-control">
                                            <option value="" hidden selected>Select active status</option>
                                            <option value="Active" ${productDetail.status == "Active" ? "selected" : ""}>Active</option>
                                            <option value="In Active" ${productDetail.status == "In Active" ? "selected" : ""}>In Active</option>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="quantity_input">Available quantity</label>
                                        <input name="quantity" type="number" id="quantity_input" class="form-control" value="${productDetail.quantity}">
                                    </div>
                                </div>
                                <div class=" ms-5" style="width: 320px;">
                                    <div class="mb-3">
                                        <div>
                                            <label class="form-label d-block">Color</label>
                                            <c:forEach var="color" items="${ListAttributesColor}" varStatus="status">
                                                <div class="form-check form-check-inline" style="padding: 0; margin-right: 12px;">
                                                    <input class="form-check-input radio_color display_none" type="radio"
                                                           name="color" id="color${color.attributeId}"
                                                           value="${color.attributeId}" ${productDetail.attributeColor.attributeId == color.attributeId ? "checked" : ""}>
                                                    <label class="form-check-label lable_radio_color  ${productDetail.attributeColor.attributeId == color.attributeId ? "selected_radio_color" : "none_radio_color"}"
                                                           for="color${color.attributeId}" style="padding: 2px;">
                                                        <p style="margin: 0; padding: 9px;border-radius: 50%; background-color: ${color.attributeValue}; border:1px solid #E6E7E8; cursor: pointer;"></p>
                                                    </label>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label d-block">Size</label>
                                        <c:forEach var="size" items="${ListAttributesSize}" varStatus="status">
                                            <div class="form-check form-check-inline" style="padding: 0; margin:0px 12px 8px 0px;">
                                                <input class="form-check-input radio_size display_none" type="radio"
                                                       name="size"
                                                       id="size${size.attributeId}" value="${size.attributeId}" ${productDetail.attributeSize.attributeId == size.attributeId ? "checked" : ""}>
                                                <label class="form-check-label lable_radio_size ${productDetail.attributeSize.attributeId == size.attributeId ? "selected_radio_size" : "non_radio_size"}"
                                                       for="size${size.attributeId}"
                                                       style="padding: 10px 16px; cursor: pointer;border-radius: 4px;">
                                                    <p style="margin: 0; padding: 0; font-size: 12px; font-weight: 500;">${size.attributeValue}</p>
                                                </label>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div class="ms-5" style="width: 640px;">
                                <div>
                                    <button type="submit" class="btn btn-dark">${productDetail != null ? "Save product detail" : "Add product detail"}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="/resources/js/script.js"></script>

</body>
</html>