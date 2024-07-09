const card_product = document.querySelectorAll(".card_product")
const img_product = document.querySelectorAll(".img_product")
const whishlist = document.querySelectorAll(".whishlist")
const btn_wishlist = document.querySelectorAll(".btn_whish_add")
const btn_addcart = document.querySelectorAll(".btn_addcart")
const radio_color = document.getElementsByName("inlineRadioOptions")

const filtersContainer = document.getElementById('filters');
const input_categoris = document.querySelectorAll(".input_categoris")
const btn_clear_filters = document.getElementById("btn_clear_filters")

const input_checkbox_color = document.querySelectorAll(".checkbox_color")
const lable_radio_color = document.querySelectorAll(".lable_radio_color")
const lable_checkbox_color = document.querySelectorAll(".lable_checkbox_color")

const input_checkbox_size = document.querySelectorAll(".checkbox_size")
const lable_radio_size = document.querySelectorAll(".lable_radio_size")
const lable_checkbox_size = document.querySelectorAll(".lable_checkbox_size")

const btnAddCart = document.getElementById("linkAdd")
const btn_detail = document.getElementById("btn_detail")
const btn_review = document.getElementById("btn_review")
const view_review = document.getElementById("view_review")
const view_detail = document.getElementById("view_detail")
const btn_copy_link = document.getElementById("btn_copy_link")
const input_url = document.getElementById("inputUrl")
const drop_right = document.getElementById("drop_right")
const menu_right = document.getElementById("menu_right")
const action_product = document.querySelectorAll(".action_product")
const product_extral = document.querySelectorAll(".product_extral")

//lấy thẻ sao đánh giá
var number_star_reviews = document.querySelectorAll(".number_star_review")
//url hiện tại dùng cho share
var urlLocal = location.href
//set value url cho input
if(input_url != null) {

    input_url.value = urlLocal
}

//test tự gen filter
const filters = [
    // { label: 'Perfume', value: '' },
    // { label: 'Size: M', value: '' },
    // { label: 'Color: ', value: '#A3BEF8' }
];
//hàm gen filters
function renderFilters() {
    if(filtersContainer != null) {
        if(btn_clear_filters != null) {
            genBtnClearAllFilters();
        }
        filters.forEach(filter => {
            const filterElement = createFilterElement(filter.label, filter.value);
            filtersContainer.appendChild(filterElement);
        });
    }
}
//load filters
document.addEventListener('DOMContentLoaded', renderFilters);
//clear all filters
function genBtnClearAllFilters() {
    if(filters.length >0) {
        btn_clear_filters.style.display = "block";
    } else {
        btn_clear_filters.style.display = "none";
    }
}
if(btn_clear_filters != null) {
    btn_clear_filters.addEventListener("click", () => {
        filters.length = 0;
        removeAllFilters();
        renderFilters();
    })
}


//hover detail product
for (let i = 0; i < card_product.length; i++) {
    card_product[i].addEventListener("mouseover", function() {
        func1(i);
    }, false);
    card_product[i].addEventListener("mouseout", function() {
        func2(i);
    }, false);
    btn_addcart[i].addEventListener("click", function() {
        console.log("Áo số " + (i+1))
    }, false);
}
//hover
function func1(index) {
    img_product[index].classList.add("opacity_05")
    whishlist[index].classList.remove("display_none");
    btn_addcart[index].classList.remove("display_none");
    whishlist[index].classList.add("display_block");
    btn_addcart[index].classList.add("display_block");
}
//non_hover
function func2(index) {
    img_product[index].classList.remove("opacity_05")
    whishlist[index].classList.add("display_none");
    btn_addcart[index].classList.add("display_none");
    whishlist[index].classList.remove("display_block");
    btn_addcart[index].classList.remove("display_block");
}

//sử lý khi nhấn nút yêu thích
for (let i = 0; i < btn_wishlist.length; i++) {
    btn_wishlist[i].addEventListener("click", function() {
        func_whishlist(i);
    }, false);
}
function func_whishlist (index) {
    let check = 0;
    let btn_wishlist_check = btn_wishlist[index]
    for(let i = 0; i < btn_wishlist_check.classList.length; i++) {
        if(btn_wishlist_check.classList[i] == "fa-regular") {
            check++
        }
    }
    if (check == 0) {
        btn_wishlist_check.classList.add("fa-regular")
        btn_wishlist_check.classList.remove("fa-solid")
    } else {
        btn_wishlist_check.classList.remove("fa-regular")
        btn_wishlist_check.classList.add("fa-solid")
    }
}

//xử lý tự gen filter
function createFilterElement(label, value) {
    const filterDiv = document.createElement('div');
    filterDiv.className = 'd-flex justify-content-between align-items-center filter_elm mb-2';
    const labelDiv = document.createElement('div');
    labelDiv.style.fontSize = '14px';
    labelDiv.style.fontWeight = '500';
    labelDiv.textContent = label;

    if (label === 'Color: ') {
        const colorCircle = document.createElement('p');
        colorCircle.className = 'p-2 m-0 d-inline-block';
        colorCircle.style.backgroundColor = value;
        colorCircle.style.borderRadius = '50%';
        labelDiv.appendChild(colorCircle);
    }

    const removeDiv = document.createElement('div');
    removeDiv.addEventListener('click', function() {
        filterDiv.remove();
        filters.splice(index, 1); // xóa khỏi filters
    });
    removeDiv.className = "btn-del btn"
    removeDiv.style.fontSize = '22px';
    removeDiv.style.fontWeight = '500';
    removeDiv.innerHTML = '&#215;';

    filterDiv.appendChild(labelDiv);
    filterDiv.appendChild(removeDiv);

    return filterDiv;
}
//xóa tất cả filters
function removeAllFilters () {
    const filter_elm = document.querySelectorAll(".filter_elm")
    filter_elm.forEach(element => {
        element.remove();
    });
}

// for (let index = 0; index < array.length; index++) {
//     const element = array[index];

// }

//xóa từng filters


//load filter hiển thị
function loadFilters() {
    removeAllFilters()
    filters.length = 0
    for (let index = 0; index < input_categoris.length; index++) {
        if(input_categoris[index].checked == true) {
            // Phần tử mới cần thêm vào
            let newFilter = { label: input_categoris[index].value, value: '' };
            // Sử dụng phương thức push để thêm phần tử mới vào mảng
            filters.push(newFilter);
            removeAllFilters()
            renderFilters()
        }
    }
    for (let index = 0; index < input_checkbox_color.length; index++) {
        if(input_checkbox_color[index].checked == true) {
            // Phần tử mới cần thêm vào
            let newFilter = { label: 'Color: ', value: input_checkbox_color[index].value };
            // Sử dụng phương thức push để thêm phần tử mới vào mảng
            filters.push(newFilter);
            removeAllFilters()
            renderFilters()
        }
    }
    for (let index = 0; index < input_checkbox_size.length; index++) {
        if(input_checkbox_size[index].checked == true) {
            // Phần tử mới cần thêm vào
            let newFilter = { label:   'Size: ' + input_checkbox_size[index].value, value: '' };
            // Sử dụng phương thức push để thêm phần tử mới vào mảng
            filters.push(newFilter);
            removeAllFilters()
            renderFilters()
        }
    }
}

//bắt chọn filters
for (let i = 0; i < input_categoris.length; i++) {
    input_categoris[i].addEventListener("click", function() {
        loadFilters()
    });
}
for (let i = 0; i < input_checkbox_color.length; i++) {
    input_checkbox_color[i].addEventListener("change", function() {
        loadFilters()
    });
}
for (let i = 0; i < input_checkbox_size.length; i++) {
    input_checkbox_size[i].addEventListener("change", function() {
        loadFilters()
    });
}


//sử lý khi chọn màu

//radio
for (let i = 0; i < lable_radio_color.length; i++) {
    lable_radio_color[i].addEventListener("click", function() {
        for(let j = 0; j < lable_radio_color.length; j++) {
            lable_radio_color[j].classList.remove("selected_radio_color")
            lable_radio_color[j].classList.add("none_radio_color")
        }
        lable_radio_color[i].classList.add("selected_radio_color")
        lable_radio_color[i].classList.remove("none_radio_color")
    });
}

//chekbox
for (let i = 0; i < lable_checkbox_color.length; i++) {
    lable_checkbox_color[i].addEventListener("click", function() {
        if(input_checkbox_color[i].checked == true) {
            lable_checkbox_color[i].classList.remove("selected_checkbox_color")
            lable_checkbox_color[i].classList.add("none_checkbox_color")
        } else {
            lable_checkbox_color[i].classList.add("selected_checkbox_color")
            lable_checkbox_color[i].classList.remove("none_checkbox_color")
        }
    });
}
//sử lý khi chọn size
//radio
for (let i = 0; i < lable_radio_size.length; i++) {
    lable_radio_size[i].addEventListener("click", function() {
        for(let j = 0; j < lable_radio_size.length; j++) {
            lable_radio_size[j].classList.remove("selected_radio_size")
            lable_radio_size[j].classList.add("non_radio_size")
        }
        lable_radio_size[i].classList.add("selected_radio_size")
    });
}
//chekbox
for (let i = 0; i < lable_checkbox_size.length; i++) {
    lable_checkbox_size[i].addEventListener("click", function() {
        if(input_checkbox_size[i].checked == true) {
            lable_checkbox_size[i].classList.remove("selected_checkbox_size")
            lable_checkbox_size[i].classList.add("non_radio_size")
        } else {
            lable_checkbox_size[i].classList.add("selected_checkbox_size")
            lable_checkbox_size[i].classList.remove("non_radio_size")
        }
    });
}
//sử lý khi tăng giảm số lượng sản phâm chọn
document.querySelectorAll('.product_cart').forEach(product => {
    const subtractBtn = product.querySelector('.btn_sub2 button');
    const addBtn = product.querySelector('.btn_plus2 button');
    const quantityElem = product.querySelector('.quantity_number2');

    if(subtractBtn != null) {
        subtractBtn.addEventListener('click', () => {
            let quantity = parseInt(quantityElem.textContent);
            if (quantity > 1) {
                quantity--;
                quantityElem.textContent = quantity;
                changeLink(quantity,btnAddCart.getAttribute("href"));
            }
        });
    }

    if(addBtn != null) {
        addBtn.addEventListener('click', () => {
            let quantity = parseInt(quantityElem.textContent);
            quantity++;
            quantityElem.textContent = quantity;
            changeLink(quantity,btnAddCart.getAttribute("href"));
        });
    }

});
function changeLink(quantityNumber, linkOld) {
    //document.getElementById("linkAdd").href="/ecommerce/add-item-cart?productId=${productDetail.productId}&quantity=" + quantityNumber;
    let newUrl = linkOld.substring(0, linkOld.indexOf('&quantity=') + 10);
    btnAddCart.href = newUrl + quantityNumber;
};




//sử lý khi chọn detail hoặc review

if(btn_detail != null) {
    btn_detail.addEventListener("click", function () {
        btn_review.classList.remove("slected_tab_detail")
        btn_review.classList.add("non_select_tab_detail")
        btn_detail.classList.remove("non_select_tab_detail")
        btn_detail.classList.add("slected_tab_detail")
        view_detail.classList.remove("display_none")
        view_detail.classList.add("display_block")
        view_review.classList.remove("display_block")
        view_review.classList.add("display_none")

    })
}
if(btn_review != null) {
    btn_review.addEventListener("click", function () {
        btn_review.classList.add("slected_tab_detail")
        btn_review.classList.remove("non_select_tab_detail")
        btn_detail.classList.add("non_select_tab_detail")
        btn_detail.classList.remove("slected_tab_detail")
        view_detail.classList.add("display_none")
        view_detail.classList.remove("display_block")
        view_review.classList.add("display_block")
        view_review.classList.remove("display_none")
    })
}
//sử lý copy share
if(btn_copy_link != null) {
    btn_copy_link.addEventListener("click", function () {
        input_url.select();
        input_url.setSelectionRange(0, 99999);
        navigator.clipboard.writeText(input_url.value);
    })
}

//sử lý chọn số sao đánh giá
for (let i = 0; i < number_star_reviews.length; i++) {
    number_star_reviews[i].addEventListener("click", function() {
        number_star(i)
    });
}
function number_star(number) {
    for (let i = 0; i < number_star_reviews.length; i++) {
        number_star_reviews[i].classList.remove("fa-solid")
    }
    for(i = 0; i <= number; i++) {
        number_star_reviews[i].classList.add("fa-solid")
    }
}

// drop_right_admin


if(drop_right != null) {
    drop_right.addEventListener("mouseover", function () {
        menu_right.classList.remove("display_none")
        menu_right.classList.add("display_block")
    })

    drop_right.addEventListener("mouseout", function () {
        menu_right.classList.remove("display_block")
        menu_right.classList.add("display_none")
    })
}

//action_product
for (let i = 0; i < action_product.length; i++) {
    action_product[i].addEventListener("mouseover", function() {
        func_action_product_hover(i);
    }, false);
    action_product[i].addEventListener("mouseout", function() {
        func_action_product_Nhover(i);
    }, false);
}
//hover
function func_action_product_hover(index) {
    product_extral[index].classList.remove("display_none")
    product_extral[index].classList.add("display_block")
}
//non_hover
function func_action_product_Nhover(index) {
    product_extral[index].classList.add("display_none")
    product_extral[index].classList.remove("display_block")
}