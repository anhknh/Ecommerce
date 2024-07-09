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
    <link rel="stylesheet" href="/resources/css/chart/stylesAdminChart.css">
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
<body class="overflow-hidden">
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
                    <a href="/ecommerce/admin/dashbroad" class="bg_profile_btn mb-3"
                       style="padding: 8px 24px; font-size: 14px; font-weight: 500; border-radius: 6px; text-decoration: none; color: #000; display:block;">
                        <i class="fa-light fa-objects-column" style="margin-right: 10px;"></i>Dashboard
                    </a>
                    <a href="/ecommerce/admin/product" class=" mb-3"
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
                                <li class="breadcrumb-item "><a href="#" class="nav_link">Admin</a></li>
                                <li class="breadcrumb-item "><a href="#" class="nav_link_active">Dashbroad</a></li>
                            </ol>
                        </nav>
                    </div>
                    <div>
                        <a href="../login.html" style="text-decoration: none; color: #000; font-size: 20px;"><i
                                class="fa-thin fa-arrow-right-from-bracket"></i></a>
                    </div>
                </div>
                <!-- detail_row1 -->
                <div class="d-flex justify-content-between mb-5">
                    <div style="width: 390px; height: 190px; background-color: #fff; border-radius: 6px; padding: 18px;">
                        <div class="d-flex justify-content-between">
                            <div>
                                <p style="font-size: 16px; font-weight: 600; margin-bottom: 8px; padding: 0;">Total
                                    Sales</p>
                                <p style="font-size: 12px; font-weight: 500; color: #5C5F6A; margin: 0; padding: 0;">
                                    THIS MONTH</p>
                            </div>
                            <div style="font-size: 24px; font-weight: 700;">
                                $ ${totalMonth}
                            </div>
                        </div>
                        <div id="container-chart-revenue"
                             style="width: 354px; height: 104px; display: flex; align-items: flex-end;">
                            <div class="chart" id="revenueChart" style="border: none;"></div>
                        </div>
                    </div>

                    <div style="width: 390px; height: 190px; background-color: #fff; border-radius: 6px; padding: 18px;">
                        <div class="d-flex justify-content-between">
                            <div>
                                <p style="font-size: 16px; font-weight: 600; margin-bottom: 8px; padding: 0;">
                                    Customers</p>
                                <p style="font-size: 12px; font-weight: 500; color: #5C5F6A; margin: 0; padding: 0;">
                                    THIS MONTH</p>
                            </div>
                            <div style="font-size: 24px; font-weight: 700;">
                                2,571
                            </div>
                        </div>
                        <div id="container-chart-customer"
                             style="width: 354px; height: 104px; display: flex; align-items: flex-end;">
                            <div class="chart" id="customerChart" style="border: none;"></div>
                        </div>
                    </div>
                    <div style="width: 390px; height: 190px; background-color: #fff; border-radius: 6px; padding: 18px;">
                        <div class="d-flex justify-content-between">
                            <div>
                                <p style="font-size: 16px; font-weight: 600; margin-bottom: 8px; padding: 0;">Orders</p>
                                <p style="font-size: 12px; font-weight: 500; color: #5C5F6A; margin: 0; padding: 0;">
                                    MONTHLY GOALS : 1,000</p>
                            </div>
                            <div style="font-size: 24px; font-weight: 700;">
                                734
                            </div>
                        </div>
                        <div class="d-flex align-items-end" style="height: 104px;">
                            <div style="width: 100%;">
                                <div style="font-size: 12px; font-weight: 500; color: #5C5F6A; margin-bottom: 8px;">
                                    266 Left
                                </div>
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" style="width: 63%;"
                                         aria-valuenow="63.7" aria-valuemin="0" aria-valuemax="100">63.7%
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- detail_row2 -->
                <div class="d-flex justify-content-between">
                    <div style="width: 390px; height: 440px; background-color: #fff; border-radius: 6px; padding: 28px;">
                        <div style="border-bottom: 1px solid #E9E9EB; padding-bottom: 28px; margin-bottom: 28px;">
                            <p style="font-size: 16px; font-weight: 600; margin-bottom: 8px; padding: 0;">Best
                                Selling</p>
                            <p style="font-size: 12px; font-weight: 500; color: #5C5F6A; margin: 0; padding: 0;">THIS
                                MONTH</p>
                        </div>
                        <div class="d-flex justify-content-between align-items-center"
                             style="width: 190px; margin-bottom: 28px;">
                            <div style="font-size: 24px; font-weight: 700;">
                                $2,400
                            </div>
                            <div style=" font-size: 18px; margin: 0px 12px;">
                                <i class="fa-light fa-dash"></i>
                            </div>
                            <div style="font-size: 14px; font-weight: 500; color: #5C5F6A;">
                                Total Sales
                            </div>
                        </div>
                        <!-- row_best_selling -->
                        <div class="d-inline-flex  align-items-center mb-2"
                             style="  padding: 4px 9px; border: 1px solid #E9E9EB;  border-radius: 100px; ">
                            <div style="font-size: 12px; font-weight: 500; color: #5C5F6A;">
                                Classic Monochrome Tees
                            </div>
                            <div style=" font-size: 14px; margin: 0px 12px;">
                                <i class="fa-light fa-dash"></i>
                            </div>
                            <div style="font-size: 12px; font-weight: 700;">
                                $940 Sales
                            </div>
                        </div>
                        <!-- row_best_selling -->
                        <div class="d-inline-flex  align-items-center mb-2"
                             style="  padding: 4px 9px; border: 1px solid #E9E9EB;  border-radius: 100px; ">
                            <div style="font-size: 12px; font-weight: 500; color: #5C5F6A;">
                                Monochromatic Wardrobe
                            </div>
                            <div style=" font-size: 14px; margin: 0px 12px;">
                                <i class="fa-light fa-dash"></i>
                            </div>
                            <div style="font-size: 12px; font-weight: 700;">
                                $790 Sales
                            </div>
                        </div>
                        <!-- row_best_selling -->
                        <div class="d-inline-flex  align-items-center mb-5"
                             style="  padding: 4px 9px; border: 1px solid #E9E9EB;  border-radius: 100px; ">
                            <div style="font-size: 12px; font-weight: 500; color: #5C5F6A;">
                                Essential Neutrals
                            </div>
                            <div style=" font-size: 14px; margin: 0px 12px;">
                                <i class="fa-light fa-dash"></i>
                            </div>
                            <div style="font-size: 12px; font-weight: 700;">
                                $740 Sales
                            </div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 40%; background-color: #4078FF;"
                                 data-bs-toggle="tooltip" data-bs-placement="top" title="Classic Monochrome Tees"
                                 aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 30%; background-color: #728FFF;"
                                 data-bs-toggle="tooltip" data-bs-placement="top" title="Monochromatic Wardrobe"
                                 aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                            <div class="progress-bar" role="progressbar" style="width: 30%; background-color: #A8B2FF;"
                                 data-bs-toggle="tooltip" data-bs-placement="top" title="Essential Neutrals"
                                 aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                    <div style="width: 796px; height: 440px; background-color: #fff; border-radius: 6px; padding: 28px;">
                        <div style="margin-bottom: 28px;">
                            <p class="d-inline-block"
                               style="font-size: 16px; font-weight: 600; margin:0px 12px 8px 0px; padding: 0;">Recent
                                Orders</p>
                            <a href="/ecommerce/admin/orders" class="d-inline-block"
                               style="text-decoration: none; font-size: 12px; font-weight: 500; color: #5C5F6A; margin: 0; padding: 0; background-color: #E9E9EB; border-radius: 100px; padding: 4px 9px;">
                                View All
                            </a>
                        </div>
                        <div>
                            <table class="table" style="border-top: 1px solid #E9E9EB;">
                                <thead>
                                <tr>
                                    <th scope="col">Item</th>
                                    <th scope="col">Date</th>
                                    <th scope="col">Total</th>
                                    <th scope="col">Status</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="order" items="${listTop5Orrder}">
                                    <tr>
                                        <td style="padding: 12px 6px;">${order.customerDetail.nameCustomer}</td>
                                        <td style="padding: 12px 6px;">${order.orderDate}</td>
                                        <td style="padding: 12px 6px;">$${order.totalAmount}</td>
                                        <td style="padding: 12px 6px;">${order.status}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="/resources/js/script.js"></script>
<script src="/resources/js/chart/scripAdminChart.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%--<script>--%>
<%--    $(document).ready(function() {--%>
<%--        const today = new Date();--%>
<%--        const year = today.getMonth() + 1;--%>
<%--        const month = today.getFullYear();--%>

<%--        $.ajax({--%>
<%--            url: `/ecommerce/daili-revenue`,--%>
<%--            method: 'GET',--%>
<%--            data: {--%>
<%--                year: year,--%>
<%--                month: month--%>
<%--            },--%>
<%--            success: function(dataRevenue) {--%>

<%--                console.log(dataRevenue)--%>
<%--                if (!Array.isArray(dataRevenue)) {--%>
<%--                    console.log("log error")--%>
<%--                    console.log(dataRevenue)--%>
<%--                    return;--%>
<%--                }--%>

<%--                const maxRevenue = Math.max(...dataRevenue.map(d => d.revenue));--%>
<%--                const chartRevenue = $('#revenueChart');--%>

<%--                dataRevenue.forEach(item => {--%>
<%--                    const barHeight = (item.revenue / maxRevenue) * 70;--%>
<%--                    const bar = $('<div></div>').addClass('bar').css('height', `${barHeight}%`);--%>
<%--                    const span = $('<span></span>').text(item.revenue);--%>
<%--                    bar.append(span);--%>
<%--                    chartRevenue.append(bar);--%>
<%--                });--%>
<%--            },--%>
<%--            error: function(err) {--%>
<%--                console.error('Error fetching data:', err);--%>
<%--            }--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>

<script>
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    })
</script>
</body>
</html>