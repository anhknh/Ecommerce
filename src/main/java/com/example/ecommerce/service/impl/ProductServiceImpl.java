package com.example.ecommerce.service.impl;

import com.example.ecommerce.model.Products;
import com.example.ecommerce.repository.ProductRepo;
import com.example.ecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductRepo productRepo;


    @Override
    public ArrayList<Products> findProductTop4createdAtDesc() {
        return productRepo.findFirst4ByOrderByCreatedAtDesc();
    }

    @Override
    public ArrayList<Products> findAllProduct() {
        return (ArrayList<Products>) productRepo.findAll();
    }

    @Override
    public Products findProductByProductId(Integer productId) {
        return productRepo.findProductsByProductId(productId);
    }

    @Override
    public Integer addProductAndGetId(String productName, String description, Integer categoriId, String status) {
        return productRepo.createProductAndGetId(productName, description, categoriId, status);
    }
}
