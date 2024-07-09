package com.example.ecommerce.service;

import com.example.ecommerce.model.ProductImages;
import com.example.ecommerce.model.Products;

import java.util.ArrayList;
import java.util.List;

public interface ProductImageService {
    ArrayList<ProductImages> getProductImagesAll();
    ArrayList<ProductImages> getProductImageByProductId(Products products);
    ProductImages getFirstProductImageByProductId(Products products);
    void addProductImages(ProductImages productImages);
    void deleteByProductImages(Integer productId);
}
