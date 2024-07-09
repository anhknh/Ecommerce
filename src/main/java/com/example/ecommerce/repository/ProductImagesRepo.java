package com.example.ecommerce.repository;

import com.example.ecommerce.model.ProductImages;
import com.example.ecommerce.model.Products;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Repository
public interface ProductImagesRepo extends JpaRepository<ProductImages, Integer> {
    ArrayList<ProductImages> findByProductId(Products products);
    ProductImages findFirstByProductId(Products products);

    void deleteByProductId_ProductId(@Param("productId") Integer productId);
}
