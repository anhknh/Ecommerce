package com.example.ecommerce.service.impl;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.OrderItems;
import com.example.ecommerce.model.Orders;
import com.example.ecommerce.repository.OrderItemRepo;
import com.example.ecommerce.repository.OrdersRepo;
import com.example.ecommerce.service.OrderItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class OrderItemServiceImpl implements OrderItemService {

    @Autowired
    OrderItemRepo orderItemRepo;

    @Override
    public void saveOrderItem(OrderItems orderItems) {
        orderItemRepo.save(orderItems);
    }

    @Override
    public ArrayList<OrderItems> getAllOrderItems() {
        return (ArrayList<OrderItems>) orderItemRepo.findAll();
    }

    @Override
    public ArrayList<OrderItems> getAllOrderItemsByOrderId(Orders orders) {
        return orderItemRepo.findByOrderId(orders);
    }

    @Override
    public Page<OrderItems> findAllByOrderId_CustomerDetail_CustomerId(Customer customer, Pageable pageable) {
        return orderItemRepo.findAllByOrderId_CustomerDetail_CustomerId(customer, pageable);
    }


}
