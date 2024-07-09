package com.example.ecommerce.repository;

import com.example.ecommerce.model.Attributes;
import com.example.ecommerce.model.ProductDetail;
import com.example.ecommerce.model.Products;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public interface ProductDetailRepo extends JpaRepository<ProductDetail, Integer> {

    @Query(value = "select DISTINCT  product_detail.color_id from product_detail join attributes on product_detail.color_id = attributes.attribute_id\n" +
                    "where product_detail.product_id = :productId", nativeQuery = true)
    List<Integer> findAttributeColor(@Param("productId") Integer productId);

    @Query(value = "select DISTINCT  product_detail.size_id from product_detail join attributes on product_detail.color_id = attributes.attribute_id\n" +
                    "where product_detail.product_id = :productId", nativeQuery = true)
    List<Integer> findAttributeSize(@Param("productId") Integer productId);


    @Query(value = "select * from product_detail\n" +
            "where product_detail.color_id = :colorId \n" +
            "and product_detail.size_id = :sizeId\n" +
            "and product_detail.product_id = :productId", nativeQuery = true)
    ProductDetail findBySizeAndColor(@Param("colorId") Integer colorId, @Param("sizeId") Integer sizeId, @Param("productId") Integer productId);


    ProductDetail findFirstByProductId(Products productId);
    ProductDetail findByProductDetailId(Integer productDetailId);

    Page<ProductDetail> findByProductId (Products productId, Pageable pageable);

    @Query(value = "select size_id from product_detail\n" +
                    "where product_id = :productId and color_id = :colorId", nativeQuery = true)
    List<Integer> getSizeByProductIdAndColorId(@Param("productId") Integer productId, @Param("colorId") Integer colorId);
}
