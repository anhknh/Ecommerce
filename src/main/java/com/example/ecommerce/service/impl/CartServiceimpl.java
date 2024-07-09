package com.example.ecommerce.service.impl;

import com.example.ecommerce.model.Cart;
import com.example.ecommerce.model.Customer;
import com.example.ecommerce.repository.CartRepo;
import com.example.ecommerce.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceimpl implements CartService {

    @Autowired
    CartRepo cartRepo;

    @Override
    public Cart findCartByCustomerId(Customer customer) {
        return cartRepo.findByCustomerId(customer);
    }

    @Override
    public void saveCart(Cart cart) {
        cartRepo.save(cart);
    }

    @Override
    public void deleteCartAllById(List<Integer> ids) {
        cartRepo.deleteAllById(ids);
    }

}
