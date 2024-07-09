package com.example.ecommerce.repository;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.OrderItems;
import com.example.ecommerce.model.Orders;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public interface OrderItemRepo extends JpaRepository<OrderItems, Integer> {

    ArrayList<OrderItems> findByOrderId(Orders orderId);
    Page<OrderItems> findAllByOrderId_CustomerDetail_CustomerId(Customer customer, Pageable pageable);
}
