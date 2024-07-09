package com.example.ecommerce.service.impl;

import com.example.ecommerce.model.*;
import com.example.ecommerce.repository.CartItemRepo;
import com.example.ecommerce.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class CartItemServiceimpl implements CartItemService {

    @Autowired
    CartItemRepo cartItemRepo;

    @Override
    public ArrayList<CartItem> getCartItemsByCart(Cart cart) {
        return cartItemRepo.findByCartId(cart);
    }

    @Override
    public void saveCartItem(CartItem cartItem) {
        cartItemRepo.save(cartItem);
    }

    @Override
    public void deleteCartItem(CartItem cartItem) {
        cartItemRepo.delete(cartItem);
    }

    @Override
    public CartItem getCartItemByCartItemId(Integer id) {
        return cartItemRepo.findByCartItemId(id);
    }

    @Override
    public CartItem getByCartAndProductDetail(Cart cart, ProductDetail productDetail) {
        return cartItemRepo.findByCartIdAndProductDetail(cart, productDetail);
    }

    @Override
    public void increaseQuantity(ProductDetail productDetail, Customer customer) {
        CartItem cartItem = cartItemRepo.findByProductDetailAndCartId_CustomerId(productDetail, customer);
        cartItem.setQuantity(cartItem.getQuantity() + 1);
        cartItemRepo.save(cartItem);
    }

    @Override
    public void decreaseQuantity(ProductDetail productDetail, Customer customer) {
        CartItem cartItem = cartItemRepo.findByProductDetailAndCartId_CustomerId(productDetail, customer);
        if(cartItem.getQuantity() > 1) {
            cartItem.setQuantity(cartItem.getQuantity() - 1);
            cartItemRepo.save(cartItem);
        }
    }
}
