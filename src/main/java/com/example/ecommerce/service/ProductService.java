package com.example.ecommerce.service;

import com.example.ecommerce.model.Products;

import java.util.ArrayList;

public interface ProductService {
    ArrayList<Products> findProductTop4createdAtDesc();
    ArrayList<Products> findAllProduct();
    Products findProductByProductId(Integer productId);
    Integer addProductAndGetId(String productName, String description, Integer categoriId, String status);
}
