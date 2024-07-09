package com.example.ecommerce.controller.user;


import com.example.ecommerce.model.*;
import com.example.ecommerce.repository.ProductRepo;
import com.example.ecommerce.service.*;
import com.example.ecommerce.utils.Authen;
import com.example.ecommerce.utils.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Optional;

@Controller
public class CategoriesController {

    @Autowired
    ProductService productService;
    @Autowired
    ProductRepo productRepo;
    @Autowired
    ProductImageService productImageService;
    @Autowired
    CategoriesService categoriesService;
    @Autowired
    AttributeService attributeService;
    @Autowired
    CartService cartService;
    @Autowired
    CartItemService cartItemService;
    @Autowired
    ProductDetailService productDetailService;
    @Autowired
    FavoroiteProductService favoroiteProductService;

    @GetMapping("/ecommerce/categories")
    public String ecommerceCategories(Model model, @RequestParam("page") Optional<Integer> page) {
        //get data cart
        float totalPrice = 0;
        Cart cart = cartService.findCartByCustomerId(Authen.customer);
        ArrayList<CartItem> listCartItem = cartItemService.getCartItemsByCart(cart);
        for (CartItem cartItem : listCartItem) {
            totalPrice = totalPrice + (cartItem.getProductDetail().getPrice() * cartItem.getQuantity());
        }
        //pageable
        Pagination pagination = new Pagination();
        Pageable pageable = PageRequest.of(page.orElse(0), 9);
        Page<Products> listAllProducts = productRepo.findAll(pageable);
        model.addAttribute("totalPage", listAllProducts.getTotalPages()-1);
        model.addAttribute("page", listAllProducts);
        model.addAttribute("pagination", pagination.getPage(listAllProducts.getNumber(),listAllProducts.getTotalPages()));

        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("listCartItem", listCartItem);

        model.addAttribute("listAllProducts", listAllProducts.getContent());
        model.addAttribute("ListCategories", categoriesService.getAllCategories());
        model.addAttribute("ListAttributesColor", attributeService.getAttributesByNameAttribute("color"));
        model.addAttribute("ListAttributesSize", attributeService.getAttributesByNameAttribute("size"));
        model.addAttribute("productImageService", productImageService);
        model.addAttribute("attributeService", attributeService);
        model.addAttribute("customer", Authen.customer);
        model.addAttribute("favoroiteProductService", favoroiteProductService);
        model.addAttribute("productDetailService", productDetailService);
        return "user/categories";
    }
}
