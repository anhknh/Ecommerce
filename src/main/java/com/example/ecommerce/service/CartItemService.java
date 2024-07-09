package com.example.ecommerce.service;

import com.example.ecommerce.model.*;

import java.util.ArrayList;

public interface CartItemService {
    ArrayList<CartItem> getCartItemsByCart(Cart cart);
    void saveCartItem(CartItem cartItem);
    void deleteCartItem (CartItem cartItem);
    CartItem getCartItemByCartItemId(Integer id);
    CartItem getByCartAndProductDetail(Cart cart, ProductDetail productDetail);

    void increaseQuantity(ProductDetail productDetail, Customer customer);
    void decreaseQuantity(ProductDetail productDetail, Customer customer);
}
