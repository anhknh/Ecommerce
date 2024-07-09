package com.example.ecommerce.service;

import com.example.ecommerce.model.Attributes;
import com.example.ecommerce.model.ProductDetail;
import com.example.ecommerce.model.Products;

import java.util.ArrayList;
import java.util.List;

public interface ProductDetailService {
    List<Integer> getAttributeColor(Integer productId);
    List<Integer> getAttributeSize(Integer productId);
    ProductDetail getFirstProduct(Products idProduct);
    ProductDetail getProductDetailById(Integer id);
    ProductDetail getByColorAndSize(Integer colorId, Integer sizeId, Integer productId);
    List<Integer> getSizeIdByProductIdAndColorId(Integer productId, Integer colorId);
}
