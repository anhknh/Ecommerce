package com.example.ecommerce.controller.user;

import com.example.ecommerce.model.Cart;
import com.example.ecommerce.model.CartItem;
import com.example.ecommerce.model.User;
import com.example.ecommerce.service.*;
import com.example.ecommerce.utils.Authen;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.Date;

@Controller
public class ProfileDetailController {


    @Autowired
    ProductService productService;
    @Autowired
    ProductImageService productImageService;
    @Autowired
    ProductDetailService productDetailService;
    @Autowired
    AttributeService attributeService;
    @Autowired
    CartService cartService;
    @Autowired
    CartItemService cartItemService;
    @Autowired
    CustomerService customerService;
    @Autowired
    UsersService usersService;


    @GetMapping("/ecommerce/profile-detail")
    public String profileDetail(Model model) {

        float totalPrice = 0;
        Cart cart = cartService.findCartByCustomerId(Authen.customer);
        ArrayList<CartItem> listCartItem = cartItemService.getCartItemsByCart(cart);
        for (CartItem cartItem : listCartItem) {
            totalPrice = totalPrice + (cartItem.getProductDetail().getPrice() * cartItem.getQuantity());
        }

        model.addAttribute("customer", Authen.customer);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("listCartItem", listCartItem);
        model.addAttribute("productImageService", productImageService);

        return "user/profile-detail";
    }

    @PostMapping("/ecommerce/profile-detail/change-detail")
    public String changeDetail(Model model, HttpServletRequest request) {
        User user = usersService.getUserById(Authen.customer.getUserId().getUserId());
        user.setEmail(request.getParameter("email"));
        Authen.customer.setImageAvatar(request.getParameter("imageAvatar"));
        Authen.customer.setUserId(user);
        Authen.customer.setLastModified(new Date());
        customerService.saveCustomer(Authen.customer);
        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" +referer;
    }
}
