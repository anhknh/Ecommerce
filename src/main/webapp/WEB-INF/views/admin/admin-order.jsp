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
                    <a href="/ecommerce/admin/product" class=" mb-3"
                       style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                        <i class="fa-regular fa-box-archive" style="margin-right: 10px;"></i> Products
                    </a>
                    <a href="/ecommerce/admin/orders" class="bg_profile_btn mb-3"
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
                                <li class="breadcrumb-item "><a href="#" class="nav_link">Admin</a></li>
                                <li class="breadcrumb-item "><a href="#" class="nav_link_active">Orders</a></li>
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
                            <h4>Orders</h4>
                        </div>
                        <div style="width: 380px;">
                            <div class="d-flex justify-content-end align-items-center">
                                <div>
                                    <form action="#">
                                        <div class="input-group flex-nowrap" style="width: 110px;">
                                            <select class="form-control">
                                                <option value="" hidden selected>Filter by</option>
                                                <option value="None">None</option>
                                                <option value="Failed">Failed</option>
                                                <option value="Processing">Processing</option>
                                                <option value="Cancelled">Cancelled</option>
                                                <option value="Completed">Completed</option>
                                                <option value="Refunded">Refunded</option>
                                                <option value="Shipped">Shipped</option>
                                                <option value="Pending">Pending</option>
                                            </select>
                                        </div>
                                    </form>
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
                                <th scope="col">Name Customer</th>
                                <th scope="col">Date Order</th>
                                <th scope="col">Total Price</th>
                                <th scope="col">Status</th>
                                <th scope="col">Details</th>
                                <th scope="col" class="text-center">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="order" items="${listOrders}">
                                <tr>
                                    <td style="padding: 12px 6px;">
                                        <div class="d-flex justify-content-center align-items-center"
                                             style="background-color: #f6f6f6; width: 48px; border-radius: 4px;">
                                            <div>
                                                <c:if test="${order.customerDetail.customerId.imageAvatar != null}">
                                                    <div class="avt_icon"
                                                         data-category-name="${order.customerDetail.nameCustomer}"
                                                         data-bg-img="/resources/image/${order.customerDetail.customerId.imageAvatar}">
                                                    </div>
                                                </c:if>
                                                <c:if test="${order.customerDetail.customerId.imageAvatar == null}">
                                                    <div class="avt_icon"
                                                         data-category-name="${order.customerDetail.nameCustomer}"
                                                         data-bg-img="">
                                                    </div>
                                                </c:if>
                                            </div>
                                        </div>
                                    </td>
                                    <td style="padding: 12px 6px; line-height: 305%;">
                                            ${order.customerDetail.nameCustomer}
                                    </td>
                                    <td style="padding: 12px 6px; line-height: 305%;">
                                            ${order.orderDate}
                                    </td>
                                    <td style="padding: 12px 6px; line-height: 305%;">
                                        $${order.totalAmount}
                                    </td>
                                    <td style="padding: 12px 6px; line-height: 305%;">
                                            ${order.status}
                                    </td>
                                    <td style="padding: 12px 6px; line-height: 305%;">
                                        <p class="d-inline-block m-0 view-detail"
                                           style="border-bottom: 1px solid #E9E9EB; cursor: pointer;"
                                           data-bs-toggle="modal"
                                           data-bs-target="#modalOrderDetail" data-id="${order.orderId}">View details</p>
                                    </td>
                                    <td style="padding: 12px 0px 12px 24px; line-height: 305%; cursor: pointer;">
                                        <div class="action_product d-inline-block" style="padding-left: 18px;">
                                            <i class="fa-solid fa-ellipsis"></i>
                                                <div class="product_extral box_shadow_black display_none">
                                                    <ul style="list-style: none; border: 1px solid #E9E9EB; border-radius: 6px;  padding: 4px 8px; background-color: #fff; width: 150px; margin: 0;">
                                                        <li style="padding: 4px 12px 4px;"><a class="d-block text_black changeStatus ${order.status != 'Completed' ? "" : "disabled"}"
                                                                                              style="text-decoration: none;"
                                                                                              data-bs-toggle="modal"
                                                                                              data-bs-target="#modalChangeStatus"
                                                                                              onclick="saveIdOrder(${order.orderId})">Change
                                                            status</a></li>
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
                                    <a class="page-link" style="color: #5C5F6A" href="/ecommerce/admin/orders?page=0"
                                       aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <c:forEach items="${pagination}" var="p">
                                    <c:if test="${page.number == p}">
                                        <li class="page-item"><a class="page-link"
                                                                 style="color: #ffffff; background-color: #5C5F6A"
                                                                 href="/ecommerce/admin/orders?page=${p}">${p + 1}</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${page.number != p}">
                                        <li class="page-item"><a class="page-link" style="color: #5C5F6A"
                                                                 href="/ecommerce/admin/orders?page=${p}">${p + 1}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>
                                <li class="page-item">
                                    <a class="page-link" style="color: #5C5F6A"
                                       href="/ecommerce/admin/orders?page=${totalPage}" aria-label="Next">
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

<!-- modal_change_status -->
<div class="modal fade" id="modalChangeStatus" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="margin-top: 200px;">
            <div class="modal-body" style="padding: 30px;">
                <div class="mb-3">
                    <h6>Change the order status to:</h6>
                </div>
                <div>
                    <form method="post" action="/ecommerce/admin/orders/change-status">
                        <div class="d-none">
                            <input type="text" class="form-contol" id="idOrder" name="idOrder" value="">
                        </div>
                        <div class="mb-3 d-flex align-items-center">
                            <div class="d-inline-block">
                                <select id="selectStatus" class="form-control"
                                        style="width: 360px; margin-right: 12px;" name="statusOrder">
                                    <option hidden selected>Choose a new status</option>
                                    <option value="Failed">Failed</option>
                                    <option value="Processing">Processing</option>
                                    <option value="Cancelled">Cancelled</option>
                                    <option value="Completed">Completed</option>
                                    <option value="Refunded">Refunded</option>
                                    <option value="Shipped">Shipped</option>
                                    <option value="Pending">Pending</option>
                                </select>
                            </div>
                            <div class="d-inline-block">
                                <button type="submit" id="btnSubmit" class="btn btn-dark">Save</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="modalOrderDetail" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content" style="width: 480px;">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Order Detail</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" style="padding:10px 20px 0px;">
                <div id="orderDetailContent">
                    <!-- Order detail content will be loaded here via jQuery -->
                </div>
            </div>
            <div class="modal-footer">
                <div style="width: 100%;">
                    <div>
                        <div class="d-flex justify-content-between mb-2">
                            <div style="font-weight: 500; color: #868891;">Total:</div>
                            <div style="font-weight: 500;" id="orderTotal"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="/resources/js/script.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
    //xử lý hiển thị tên trên avt
    document.addEventListener("DOMContentLoaded", loadAvt);
    function loadAvt() {
        var entityElements = document.querySelectorAll(".avt_icon");
        entityElements.forEach(function (entityElement) {
            var categoryName = entityElement.getAttribute("data-category-name");
            var bgImg = entityElement.getAttribute("data-bg-img");
            if (bgImg) {
                entityElement.style.backgroundImage = 'url(' + bgImg + ')';
            } else if (categoryName) {
                var initials = categoryName.split(' ').map(word => word.charAt(0)).join('');
                entityElement.textContent = initials;
            }
        });
    }

    $(document).ready(function() {
        $('.view-detail').click(function() {
            console.log("hello")
            var orderId = $(this).data('id');
            $.ajax({
                url: '/ecommerce/admin/orders/find-orderDetail',
                type: 'GET',
                data: { idOrder: orderId },
                success: function(data) {
                    var orderItems = data.orderItems;
                    var order = data.order;
                    var productImages = data.productImages;
                    //format date
                    var d = new Date(order.orderDate);
                    var formatDate = d.getDate() + "-" + (d.getMonth() + 1) + "-" + d.getFullYear();
                    function checkAvt() {
                        var customerOrderDetailsHtml
                        if(order.customerDetail.customerId.imageAvatar != "") {
                            customerOrderDetailsHtml = `
                            <div class="avt_icon"
                                 data-category-name="\${order.customerDetail.nameCustomer}"
                                 data-bg-img="/resources/image/\${order.customerDetail.customerId.imageAvatar}">
                            </div>
                        `;
                        } else {
                            customerOrderDetailsHtml = `
                            <div class="avt_icon"
                                 data-category-name="\${order.customerDetail.nameCustomer}"
                                 data-bg-img="">
                            </div>
                        `;
                        }
                        return customerOrderDetailsHtml;
                    }

                    $('#orderDetailContent').html('');
                    var orderDetailsHtml = `
                    <div class="mb-4">
                        <div class="d-flex justify-content-between mb-2">
                            <div style="font-weight: 500; color: #868891;">Ordered on:</div>
                            <div style="font-weight: 500;">\${formatDate}</div>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div style="font-weight: 500; color: #868891;">Status:</div>
                            <div style="font-weight: 500;">\${order.status}</div>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <div style="font-weight: 500; color: #868891;">Payment method:</div>
                            <div style="font-weight: 500;">\${order.paymentMethod}</div>
                        </div>
                    </div>
                    <div class="mb-4">
                        <h6 class="mb-2" style="font-size: 18px;">Customer</h6>
                        <div class="d-flex align-items-center mb-4" style="border-top: 1px solid #E9E9EB; padding: 12px 0px;">
                            <div class="d-flex align-items-center me-3">
                                <div class="d-inline-block me-3">

                                    <div class="d-flex justify-content-center align-items-center" style="background-color: #f6f6f6; width: 58px; border-radius: 4px;">
                                        `+
                                            checkAvt()
                                        +
                                        `
                                    </div>
                                </div>
                                <div class="d-inline-block">
                                    <h6 style="margin-bottom: 8px;">\${order.customerDetail.nameCustomer}</h6>
                                    <p class="m-0 p-0" style="color: #868891;">\${order.customerDetail.phoneNumber}</p>
                                    <p class="m-0 p-0" style="color: #868891;">\${order.customerDetail.addressCustomer}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mb-4">
                        <h6 class="mb-2" style="font-size: 18px;">Ordered Items</h6>
                `;
                    // Loop through the items and build the HTML
                    orderItems.forEach(function(orderItem, index) {
                        //get name image
                        var nameImg = productImages[index];
                        var url = "background: url('" + "/resources/image/" + nameImg + "')" + "no-repeat center center / cover";
                        //get color
                        var valueColor = "background-color: " + orderItem.productDetail.attributeColor.attributeValue;
                        orderDetailsHtml += `
                        <div class="d-flex align-items-center" style="border-top: 1px solid #E9E9EB; padding: 12px 0px;">
                            <div class="d-inline-block me-3">
                                <div class="d-flex justify-content-center align-items-center" style="background-color: #f6f6f6; width: 54px; border-radius: 4px;">
                                    <div style="width: 54px; height: 54px; \${url} ; border: none;"></div>
                                </div>
                            </div>
                            <div>
                                <p class="m-0 p-0" style="font-size: 14px; font-weight: 500;">\${orderItem.productDetail.productId.productName}</p>
                                <p class="m-0 p-0 d-inline-block" style="font-size: 14px; font-weight: 500; color: #868891 ;margin-left: 8px;">$\${orderItem.productDetail.price} - Quantity: \${orderItem.quantity}</p>
                            </div>
                            <div class="ms-auto d-flex justify-content-between align-items-center" style="width: 62px; height: 22px;">
                                <div data-bs-toggle="tooltip" title="Color" style="padding: 8px; border-radius: 50%; \${valueColor}; border: 1px solid #E9E9EB;"></div>
                                <div style="font-size: 16px; font-weight: 500; color: #5C5F6A; margin: 0px 6px;">&#8722;</div>
                                <div data-bs-toggle="tooltip" title="Size" style="font-size: 16px; font-weight: 500; color: #5C5F6A;">\${orderItem.productDetail.attributeSize.attributeValue}</div>
                            </div>
                        </div>
                    `;
                    });
                    orderDetailsHtml += `</div>`;
                    $('#orderDetailContent').html(orderDetailsHtml);
                    $('#orderTotal').text(`$\${order.totalAmount}`);
                    $('#modalOrderDetail').modal('show');
                    loadAvt();
                }
            });
        });
    });

    const inputIdOrder = document.getElementById("idOrder");
    const selectStatus = document.getElementById("selectStatus");
    const btnSubmit = document.getElementById("btnSubmit");

    //tooltip
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    })

    function saveIdOrder(id) {
        inputIdOrder.value = id;
    }
</script>
</body>
</html>