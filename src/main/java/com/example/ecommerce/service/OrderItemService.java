package com.example.ecommerce.service;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.OrderItems;
import com.example.ecommerce.model.Orders;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.ArrayList;
import java.util.List;

public interface OrderItemService {
    void saveOrderItem(OrderItems orderItems);
    ArrayList<OrderItems> getAllOrderItems();
    ArrayList<OrderItems> getAllOrderItemsByOrderId(Orders orders);
    Page<OrderItems> findAllByOrderId_CustomerDetail_CustomerId(Customer customer, Pageable pageable);
}
