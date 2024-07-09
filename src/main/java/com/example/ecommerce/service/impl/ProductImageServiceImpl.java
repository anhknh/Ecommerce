package com.example.ecommerce.service.impl;

import com.example.ecommerce.model.ProductImages;
import com.example.ecommerce.model.Products;
import com.example.ecommerce.repository.ProductImagesRepo;
import com.example.ecommerce.service.ProductImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductImageServiceImpl implements ProductImageService {

    @Autowired
    ProductImagesRepo productImagesRepo;

    @Override
    public ArrayList<ProductImages> getProductImagesAll() {
        return (ArrayList<ProductImages>) productImagesRepo.findAll();
    }

    @Override
    public ArrayList<ProductImages> getProductImageByProductId(Products products) {
        return productImagesRepo.findByProductId(products);
    }

    @Override
    public ProductImages getFirstProductImageByProductId(Products products) {
        return productImagesRepo.findFirstByProductId(products);
    }

    @Override
    public void addProductImages(ProductImages productImages) {
        productImagesRepo.save(productImages);
    }

    @Override
    public void deleteByProductImages(Integer productId) {
        productImagesRepo.deleteByProductId_ProductId(productId);
    }


}
