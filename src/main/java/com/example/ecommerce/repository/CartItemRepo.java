package com.example.ecommerce.repository;

import com.example.ecommerce.model.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface CartItemRepo extends JpaRepository<CartItem, Integer> {
    ArrayList<CartItem> findByCartId(Cart cart);
    CartItem findByCartItemId(Integer cartItemId);
    CartItem findByCartIdAndProductDetail(Cart cart, ProductDetail productDetail);
    CartItem findByProductDetailAndCartId_CustomerId(ProductDetail productDetail, Customer customer);
}
