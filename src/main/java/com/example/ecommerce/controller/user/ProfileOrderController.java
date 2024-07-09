package com.example.ecommerce.controller.user;

import com.example.ecommerce.model.*;
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
public class ProfileOrderController {

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
    OrderItemService orderItemService;

    @Autowired
    OrdersService ordersService;

    @GetMapping("/ecommerce/profile-orders")
    public String profileOrders(Model model,  @RequestParam("page") Optional<Integer> page) {
        float totalPrice = 0;
        Cart cart = cartService.findCartByCustomerId(Authen.customer);
        ArrayList<CartItem> listCartItem = cartItemService.getCartItemsByCart(cart);
        for (CartItem cartItem : listCartItem) {
            totalPrice = totalPrice + (cartItem.getProductDetail().getPrice() * cartItem.getQuantity());
        }
        Pagination pagination = new Pagination();
        Pageable pageable = PageRequest.of(page.orElse(0), 3);
        Page<OrderItems> listOrderItem = orderItemService.findAllByOrderId_CustomerDetail_CustomerId(Authen.customer, pageable);
        model.addAttribute("totalPage", listOrderItem.getTotalPages()-1);
        model.addAttribute("page", listOrderItem);
        model.addAttribute("pagination", pagination.getPage(listOrderItem.getNumber(),listOrderItem.getTotalPages()));

        model.addAttribute("listOrderItem", listOrderItem.getContent());
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("listCartItem", listCartItem);
        model.addAttribute("productImageService", productImageService);
        return "user/profile-order";
    }
}
