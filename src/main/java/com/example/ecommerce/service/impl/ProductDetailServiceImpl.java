package com.example.ecommerce.service.impl;

import com.example.ecommerce.model.Attributes;
import com.example.ecommerce.model.ProductDetail;
import com.example.ecommerce.model.Products;
import com.example.ecommerce.repository.ProductDetailRepo;
import com.example.ecommerce.service.ProductDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductDetailServiceImpl implements ProductDetailService {

    @Autowired
    ProductDetailRepo productDetailRepo;


    @Override
    public List<Integer> getAttributeColor(Integer productId) {
        return productDetailRepo.findAttributeColor(productId);
    }

    @Override
    public List<Integer> getAttributeSize(Integer productId) {
        return productDetailRepo.findAttributeSize(productId);
    }

    @Override
    public ProductDetail getFirstProduct(Products idProduct) {
        return productDetailRepo.findFirstByProductId(idProduct);
    }

    @Override
    public ProductDetail getProductDetailById(Integer id) {
        return productDetailRepo.findByProductDetailId(id);
    }

    @Override
    public ProductDetail getByColorAndSize(Integer colorId, Integer sizeId, Integer productId) {
        return productDetailRepo.findBySizeAndColor(colorId, sizeId, productId);
    }

    @Override
    public List<Integer> getSizeIdByProductIdAndColorId(Integer productId, Integer colorId) {
        return productDetailRepo.getSizeByProductIdAndColorId(productId, colorId);
    }
}
