package com.example.ecommerce.service;

import com.example.ecommerce.model.ProductReviews;
import com.example.ecommerce.model.Products;

import java.util.ArrayList;

public interface ProductReviewService {
    ArrayList<ProductReviews> getReviewByProduct(Products products);
    float getAverageRatingByProduct(Products products);
}
