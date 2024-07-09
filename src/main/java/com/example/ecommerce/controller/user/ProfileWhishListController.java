package com.example.ecommerce.controller.user;

import com.example.ecommerce.model.Cart;
import com.example.ecommerce.model.CartItem;
import com.example.ecommerce.model.FavoriteProducts;
import com.example.ecommerce.service.*;
import com.example.ecommerce.utils.Authen;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Date;

@Controller
public class ProfileWhishListController {

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
    FavoroiteProductService favoroiteProductService;


    @GetMapping("/ecommerce/profile-wishlist")
    public String profileWhilist(Model model) {
        //get data cart
        float totalPrice = 0;
        Cart cart = cartService.findCartByCustomerId(Authen.customer);
        ArrayList<CartItem> listCartItem = cartItemService.getCartItemsByCart(cart);
        for (CartItem cartItem : listCartItem) {
            totalPrice = totalPrice + (cartItem.getProductDetail().getPrice() * cartItem.getQuantity());
        }
        //show favoriteProdeuct
        model.addAttribute("listFavoriteProduct", favoroiteProductService.getFavoriteProducts(Authen.customer));
        //show cart
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("listCartItem", listCartItem);
        model.addAttribute("productImageService", productImageService);
        model.addAttribute("productDetailService", productDetailService);
        return "user/profile-wishlist";
    }

    @GetMapping("/ecommerce/add-favorite-product")
    public String addFavoriteProduct(Model model, @RequestParam("idProduct") int productId, HttpServletRequest request) {
        FavoriteProducts favoriteProducts = new FavoriteProducts();
        favoriteProducts.setProducts(productService.findProductByProductId(productId));
        favoriteProducts.setCustomer(Authen.customer);
        favoriteProducts.setCreated_at(new Date());
        favoriteProducts.setLast_modified(new Date());
        favoroiteProductService.addFavoriteProducts(favoriteProducts);
        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" +referer;
    }

    @GetMapping("/ecommerce/remove-favorite-product")
    public String removeFavoriteProduct(Model model, @RequestParam("idProduct") int productId, HttpServletRequest request) {
        FavoriteProducts favoriteProducts = new FavoriteProducts();
        favoriteProducts = favoroiteProductService.getFavoriteProductByProductAndCustomer(productService.findProductByProductId(productId), Authen.customer);
        if (favoriteProducts.getProducts() != null) {
            favoroiteProductService.removeFavoriteProducts(favoriteProducts.getFavoriteId());
        }
        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" +referer;
    }
}
