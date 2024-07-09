package com.example.ecommerce.repository;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.FavoriteProducts;
import com.example.ecommerce.model.Products;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface FavoriteProductsRepo extends JpaRepository<com.example.ecommerce.model.FavoriteProducts, Integer> {

    ArrayList<FavoriteProducts> findByCustomer(Customer customer);

    FavoriteProducts findByCustomerAndProducts(Customer customer, Products product);

    Boolean existsByProductsAndCustomer(Products products, Customer customer);
}
