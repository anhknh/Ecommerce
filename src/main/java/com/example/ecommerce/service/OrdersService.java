package com.example.ecommerce.service;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.Orders;
import jakarta.persistence.criteria.Order;

import java.util.ArrayList;

public interface OrdersService {
    Integer saveOrderAndGetId(Integer detailId, String status, float totalAmount, String paymentMethod);
    void saveOrder(Orders order);
    Orders findOrderByCustomerAndOrdersDesc(Customer customer, String status);
    Orders findById(Integer id);
    ArrayList<Orders> findOrdersByCustomer(Customer customer);
    void deleteOrder(Integer id);
    ArrayList<Orders> findTop5Date();
}
