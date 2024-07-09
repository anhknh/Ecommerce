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
                                <li class="breadcrumb-item "><a href="#" class="nav_link">Admin</a></li>
                                <li class="breadcrumb-item "><a href="#" class="nav_link_active">Products</a></li>
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
                        <h5>${product != null ? "Save product" : "Add product"}</h5>
                    </div>
                    <div style="padding: 40px;">
                        <form method="post" action="/ecommerce/admin/product-manage/add" enctype="multipart/form-data">
                            <div class="d-flex mb-4">
                                <div class=" ms-5" style="width: 320px;">
                                    <div class="mb-3 d-none">
                                        <label class="form-label" for="id_input">Id Product</label>
                                        <input type="text" id="id_input" name="productId" class="form-control"
                                               value="${product.productId}" readonly>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="title_input">Name Product</label>
                                        <input type="text" id="title_input" name="productName" class="form-control"
                                               value="${product.productName}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="stock_input">Active status</label>
                                        <select name="status" id="stock_input" class="form-control">
                                            <option value="" hidden selected>Select Active status</option>
                                            <option value="Active" ${product.status == "Active" ? "selected" : ""}>
                                                Active
                                            </option>
                                            <option value="In Active" ${product.status == "In Active" ? "selected" : ""}>
                                                In Active
                                            </option>
                                        </select>
                                    </div>
                                </div>
                                <div class=" ms-5" style="width: 320px;">
                                    <div class="mb-3">
                                        <label class="form-label" for="category_input">Category</label>
                                        <select name="categories" id="category_input" class="form-control">
                                            <option value="" hidden selected>Select a category</option>
                                            <c:forEach var="categories" items="${listCategories}">
                                                <option value="${categories.categoryId}" ${product.categoryId.categoryId == categories.categoryId ? "selected" : ""}>${categories.categoryName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="input_img">Images</label>
                                        <input type="file" name="imageName" class="form-control mb-4" id="input_img"
                                               multiple>
                                        <div id="imgPereview" class="d-flex flex-wrap">
                                            <c:if test="${product != null}">
                                                <c:forEach var="image" items="${listImgae}">
                                                    <div class="mb-3 me-4">
                                                        <div class="imgInputReview">
                                                            <div class="img_Input_Review">
                                                                <img src="/resources/image/${image.nameImage}" class="img_Review">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ms-5" style="width: 640px;">
                                <div class="mb-5">
                                    <div class="form-floating">
                                        <textarea class="form-control" name="description"
                                                  placeholder="Leave a comment here"
                                                  id="floatingTextarea2" style="height: 100px">${product.description}</textarea>
                                        <label for="floatingTextarea2">description</label>
                                    </div>
                                </div>
                                <div>
                                    <button type="submit" class="btn btn-dark">${product != null ? "Save product" : "Add product"}</button>
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
<script>
    //sử lý input image
    const imageInput = document.getElementById("input_img");
    const imgPereview = document.getElementById("imgPereview");
    let selectedFiles = [];

    imageInput.addEventListener('change', function (event) {
        selectedFiles = Array.from(event.target.files); // Cập nhật danh sách file đã chọn
        updateImagePreview();
    });

    function updateImagePreview() {
        imgPereview.innerHTML = ''; // Xóa các ảnh cũ

        selectedFiles.forEach((file, index) => {
            const reader = new FileReader();
            reader.onload = function (e) {
                const imgContainer = document.createElement('div');
                imgContainer.classList.add('mb-3');
                imgContainer.classList.add('me-4');
                imgPereview.appendChild(imgContainer)

                const imgInputReview = document.createElement('div');
                imgInputReview.classList.add("imgInputReview")
                imgContainer.appendChild(imgInputReview)


                const imgInput = document.createElement('div');
                imgInput.classList.add("img_Input_Review")
                imgInputReview.appendChild(imgInput)

                const img = document.createElement('img');
                img.src = e.target.result;
                img.classList.add('img_Review')
                imgInput.appendChild(img)


                const closeButton = document.createElement('div');
                closeButton.classList.add('close_img');
                closeButton.innerHTML = 'X';
                closeButton.onclick = function () {
                    selectedFiles.splice(index, 1); // Xóa file khỏi danh sách
                    updateImagePreview(); // Cập nhật lại preview
                    updateInputFiles(); // Cập nhật lại input files
                }
                imgInput.appendChild(closeButton)
            }
            reader.readAsDataURL(file);
        });
    }

    function updateInputFiles() {
        const dataTransfer = new DataTransfer();
        selectedFiles.forEach(file => dataTransfer.items.add(file));
        imageInput.files = dataTransfer.files;
    }
</script>
</body>
</html>