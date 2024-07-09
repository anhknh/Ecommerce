package com.example.ecommerce.controller.user;

import com.example.ecommerce.model.*;
import com.example.ecommerce.service.*;
import com.example.ecommerce.utils.Authen;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
public class CartController {

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
    CustomerDetailService customerDetailService;

    @Autowired
    OrderItemService orderItemService;

    @Autowired
    OrdersService ordersService;

    @GetMapping("/ecommerce/cart")
    public String CartController(Model model) {
        float totalPrice = 0;
        Cart cart = cartService.findCartByCustomerId(Authen.customer);
        ArrayList<CartItem> listCartItem = cartItemService.getCartItemsByCart(cart);
        for (CartItem cartItem : listCartItem) {
            totalPrice = totalPrice + (cartItem.getProductDetail().getPrice() * cartItem.getQuantity());
        }
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("listCartItem", listCartItem);
        model.addAttribute("productImageService", productImageService);
        return "user/cart";
    }

    @GetMapping("/ecommerce/add-item-cart")
    public String addToCart(@RequestParam("productDetailId") Integer productDetailId, @RequestParam("quantity")Optional<Integer> quantity, HttpServletRequest request, Model model){
        CartItem cartItemCheck = null;
        Integer quantityCheck = quantity.orElse(1);
        Cart cart = cartService.findCartByCustomerId(Authen.customer);
        ArrayList<CartItem> listCartItem = cartItemService.getCartItemsByCart(cart);
        for (CartItem cartItem : listCartItem) {
            if(cartItem.getProductDetail().getProductDetailId() == productDetailId) {
                cartItemCheck = cartItem;
                break;
            }
        }
        if(cartItemCheck == null) {
            CartItem cartItem = new CartItem();
            cartItem.setCartId(cartService.findCartByCustomerId(Authen.customer));
            cartItem.setProductDetail(productDetailService.getProductDetailById(productDetailId));
            cartItem.setCreatedAt(new Date());
            cartItem.setLastModified(new Date());
            cartItem.setQuantity(quantityCheck);
            cartItemService.saveCartItem(cartItem);
        } else {
            cartItemCheck.setQuantity(cartItemCheck.getQuantity() + quantityCheck) ;
            cartItemService.saveCartItem(cartItemCheck);
        }
        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" +referer;
    }

    //update quantity product in cart
    @PostMapping("/ecommerce/increase")
    public ResponseEntity<String> increaseQuantity(@RequestParam("productDetailId") Integer productDetailId) {
        cartItemService.increaseQuantity(productDetailService.getProductDetailById(productDetailId),Authen.customer);
        return ResponseEntity.ok("Product quantity increased");
    }
    @PostMapping("/ecommerce/decrease")
    public ResponseEntity<String> decreaseQuantity(@RequestParam("productDetailId") Integer productDetailId) {
        cartItemService.decreaseQuantity(productDetailService.getProductDetailById(productDetailId), Authen.customer);
        return ResponseEntity.ok("Product quantity decreased");
    }

    @PostMapping("/ecommerce/cart/check-out")
    public String CartCheckOut(@RequestParam("toltalPrice") float totalPrice, @RequestParam(name = "productCheck", required = false) List<String> productCheck, Model model, HttpServletRequest servlet) {
        Integer idOrder;
        if(productCheck == null || productCheck.isEmpty()) {
            return "redirect:/ecommerce/cart";
        }
        String productCheckParam = String.join(",", productCheck);
        return "redirect:/ecommerce/checkout?productCheck=" + productCheckParam;
    }


    @GetMapping("/ecommerce/cart/delete-cart")
    public String deleteCart(@RequestParam("cartItemId") Integer cartItemId, HttpServletRequest request) {
        CartItem cartItem = cartItemService.getCartItemByCartItemId(cartItemId);
        if(cartItem != null) {
            cartItemService.deleteCartItem(cartItem);
        }
        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" +referer;
    }

}
