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
                                <li class="breadcrumb-item "><a href="/ecommerce/admin/dashbroad" class="nav_link">Admin</a></li>
                                <li class="breadcrumb-item "><a href="/ecommerce/admin/product" class="nav_link_active">Products</a></li>
                                <li class="breadcrumb-item "><a href="#" class="nav_link_active">Product detail</a></li>
                            </ol>
                        </nav>
                    </div>
                    <div>
                        <a href="../login.html" style="text-decoration: none; color: #000; font-size: 20px;"><i
                                class="fa-thin fa-arrow-right-from-bracket"></i></a>
                    </div>
                </div>
                <div style="background-color: #fff; border-radius: 6px; padding: 24px 40px; border: 1px solid #f6f7f8;">
                    <!-- headre_content -->
                    <div class="d-flex justify-content-between" style="padding-bottom: 28px;">
                        <div>
                            <h5>Products detail - ${product.productName}</h5>
                        </div>
                        <div style="width: 420px;">

                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <form action="#">
                                        <div class="input-group flex-nowrap" style="width: 240px;">
                                                        <span class="input-group-text" id="addon-wrapping"
                                                              style="background-color: #fff;">
                                                            <i class="fa-solid fa-magnifying-glass"
                                                               style="color: #5C5F6A;"></i>
                                                        </span>
                                            <input type="text" class="form-control" placeholder="Search products"
                                                   style="border-left: none; padding: 8px 10px 8px 0px; ">
                                        </div>
                                    </form>
                                </div>
                                <div>
                                    <a href="/ecommerce/admin/product-detail-manage?productId= ${productId}" class="btn btn-dark"
                                       style="display: inline-block;">Add products detail</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- table -->
                    <div style="margin-bottom: 28px;">
                        <table class="table" style="border-top: 1px solid #E9E9EB;">
                            <thead>
                            <tr>
                                <th scope="col" style="padding-left: 20px;">#</th>
                                <th scope="col">Name</th>
                                <th scope="col">Color</th>
                                <th scope="col">Size</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col" class="text-center">Stock</th>
                                <th scope="col" class="text-center">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="productDetail" items="${listAllProductDetail}">
                                <tr>
                                    <td style="padding: 12px 6px;">
                                        <div class="d-flex justify-content-center align-items-center"
                                             style="background-color: #f6f6f6; width: 48px; border-radius: 4px;">
                                            <div>
                                                <div style="width: 46px; height: 46px; background: url('/resources/image/${productImageService.getFirstProductImageByProductId(productDetail.productId).nameImage}') no-repeat center center / cover; border: none;">
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td style="padding: 12px 6px; line-height: 305%;">
                                            ${productDetail.productId.productName}
                                    </td>
                                    <td style="padding: 12px 6px; line-height: 305%;">
                                        <div style="width: 42px; margin-top: 20px; height: 12px; background-color: ${productDetail.attributeColor.attributeValue}; border: 1px solid #5C5F6A"></div>
                                    </td>
                                    <td style="padding: 12px 6px; line-height: 305%;">
                                        ${productDetail.attributeSize.attributeValue}
                                    </td>
                                    <td style="padding: 12px 6px; line-height: 305%;">
                                            $${productDetail.price}
                                    </td>
                                    <td style="padding: 12px 6px; line-height: 305%;">
                                            ${productDetail.quantity}
                                    </td>
                                    <td class="text-center" style="padding: 12px 6px; line-height: 305%;">
                                        <c:if test="${productDetail.status == 'Active'}">
                                            <i class="fa-regular fa-check"></i>
                                        </c:if>
                                    </td>
                                    <td style="padding: 12px 0px 12px 24px; line-height: 305%; cursor: pointer;">
                                        <div class="action_product d-inline-block" style="padding-left: 18px;">
                                            <i class="fa-solid fa-ellipsis"></i>
                                            <div class="product_extral box_shadow_black display_none ">
                                                <ul style="list-style: none; border: 1px solid #E9E9EB; border-radius: 6px;  padding: 4px 8px; background-color: #fff; width: 140px; margin: 0;">
                                                    <li style="padding: 4px 12px 4px; height: 40px;"><a
                                                            href="/ecommerce/product-detail?productId=${productDetail.productId.productId}" target="_blank" class="d-block"
                                                            style="text-decoration: none; color: #000;">View</a></li>
                                                    <li style="padding: 4px 12px 4px;"><a
                                                            href="/ecommerce/admin/product-detail-manage?productId=${productId}&productDetailId=${productDetail.productDetailId}" class="d-block"
                                                            style="text-decoration: none; color: #000;">Edit</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div>
                        <!-- page_number -->
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-end">
                                <li class="page-item">
                                    <a class="page-link" style="color: #5C5F6A" href="/ecommerce/admin/product-detail?productId=${productId}&page=0" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <c:forEach items="${pagination}" var="p">
                                    <c:if test="${page.number == p}">
                                        <li class="page-item"><a class="page-link" style="color: #ffffff; background-color: #5C5F6A" href="/ecommerce/admin/product-detail?productId=${productId}&page=${p}">${p + 1}</a></li>
                                    </c:if>
                                    <c:if test="${page.number != p}">
                                        <li class="page-item"><a class="page-link" style="color: #5C5F6A" href="/ecommerce/admin/product-detail?productId=${productId}&page=${p}">${p + 1}</a></li>
                                    </c:if>

                                </c:forEach>
                                <li class="page-item">
                                    <a class="page-link" style="color: #5C5F6A" href="/ecommerce/admin/product-detail?productId=${productId}&page=${totalPage}" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
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