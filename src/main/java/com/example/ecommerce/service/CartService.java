package com.example.ecommerce.service;

import com.example.ecommerce.model.Cart;
import com.example.ecommerce.model.Customer;

import java.util.List;

public interface CartService {
    Cart findCartByCustomerId(Customer customer);
    void saveCart(Cart cart);
    void deleteCartAllById(List<Integer> ids);
}
