package com.example.ecommerce.repository;

import com.example.ecommerce.model.Products;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface ProductRepo extends JpaRepository<Products, Integer> {
    ArrayList<Products> findFirst4ByOrderByCreatedAtDesc();
    Products findProductsByProductId(Integer productId);

    @Query(value = "DECLARE @product_id INT; " +
            "INSERT INTO  [dbo].[products] ([product_name], [description], [category_id], [status], [created_at],[last_modified]) " +
            "VALUES (:product_name, :description, :category_id, :status, GETDATE(), GETDATE())\n" +
            "SET @product_id = SCOPE_IDENTITY(); " +
            "SELECT @product_id", nativeQuery = true)
    Integer createProductAndGetId(@Param("product_name") String productName,
                                @Param("description") String description ,
                                @Param("category_id") Integer categoriId,
                                @Param("status" ) String status);
}
