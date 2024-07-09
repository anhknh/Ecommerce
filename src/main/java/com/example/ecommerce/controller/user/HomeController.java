package com.example.ecommerce.controller.user;


import com.example.ecommerce.model.*;
import com.example.ecommerce.service.*;
import com.example.ecommerce.utils.Authen;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class HomeController {

    @Autowired
    ProductService productService;
    @Autowired
    ProductImageService productImageService;
    @Autowired
    CartService cartService;
    @Autowired
    CartItemService cartItemService;
    @Autowired
    FavoroiteProductService favoroiteProductService;
    @Autowired
    ProductDetailService productDetailService;

    @GetMapping("/ecommerce/home")
    public String home(Model model, HttpSession session) {
        //get data cart
        float totalPrice = 0;
        ArrayList<Products> listTop4Product = productService.findProductTop4createdAtDesc();
        Cart cart = cartService.findCartByCustomerId(Authen.customer);
        ArrayList<CartItem> listCartItem = cartItemService.getCartItemsByCart(cart);for (CartItem cartItem : listCartItem) {
            totalPrice = totalPrice + (cartItem.getProductDetail().getPrice() * cartItem.getQuantity());
        }

        Customer customer = Authen.customer;
        model.addAttribute("customer", customer);
        model.addAttribute("favoroiteProductService", favoroiteProductService);
        model.addAttribute("productDetailService", productDetailService);

        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("listCartItem", listCartItem);
        model.addAttribute("listTop4Product", listTop4Product);
        model.addAttribute("productImageService", productImageService);
        return "user/home";
    }

}
