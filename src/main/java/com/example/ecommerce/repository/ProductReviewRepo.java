package com.example.ecommerce.repository;

import com.example.ecommerce.model.ProductReviews;
import com.example.ecommerce.model.Products;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
@Repository
public interface ProductReviewRepo extends JpaRepository<ProductReviews, Integer> {
    ArrayList<ProductReviews> findByProducts (Products productId);

}
