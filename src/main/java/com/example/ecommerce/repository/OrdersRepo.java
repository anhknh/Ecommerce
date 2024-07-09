package com.example.ecommerce.repository;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.Orders;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface OrdersRepo  extends JpaRepository<Orders, Integer> {
    Orders findFirstByCustomerDetail_CustomerIdAndStatusOrderByOrderDateDesc(Customer customer, String status);
    Orders findByOrderId(Integer orderId);
    ArrayList<Orders> findAllByCustomerDetail_CustomerIdIsAndStatus(Customer customer, String status);
    ArrayList<Orders> findAllByCustomerDetail_CustomerId(Customer customer);
    ArrayList<Orders> findTop5ByOrderByOrderDateDesc();
    @Query(value = "DECLARE @order_id INT; " +
            "INSERT INTO  [dbo].[orders] ([detail_id], [order_date], [status], [total_amount], [payment_method]) " +
            "VALUES (:detail_id, GETDATE(), :status, :totalAmount, :paymentMethod)\n" +
            "SET @order_id = SCOPE_IDENTITY(); " +
            "SELECT @order_id", nativeQuery = true)
    Integer createOrderAndGetId(@Param("detail_id") Integer detailId,
                                @Param("status") String status ,
                                @Param("totalAmount") float totalAmount,
                                @Param("paymentMethod" ) String paymentMethod);
}
