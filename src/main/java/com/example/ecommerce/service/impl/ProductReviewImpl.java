package com.example.ecommerce.service.impl;

import com.example.ecommerce.model.ProductReviews;
import com.example.ecommerce.model.Products;
import com.example.ecommerce.repository.ProductReviewRepo;
import com.example.ecommerce.service.ProductReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
@Service
public class ProductReviewImpl implements ProductReviewService {

    @Autowired
    ProductReviewRepo productReviewRepo;

    @Override
    public ArrayList<ProductReviews> getReviewByProduct(Products products) {
        return productReviewRepo.findByProducts(products);
    }

    @Override
    public float getAverageRatingByProduct(Products products) {
        float rating = 0;
        ArrayList<ProductReviews> reviews = productReviewRepo.findByProducts(products);
        for (ProductReviews review : reviews) {
            rating = rating +  review.getRating();
        }
        float avg = rating/reviews.size();
        if(avg > 0) {
            return avg;
        } else {
            return 0;
        }
    }
}
