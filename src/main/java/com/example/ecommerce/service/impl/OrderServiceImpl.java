package com.example.ecommerce.service.impl;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.Orders;
import com.example.ecommerce.repository.OrdersRepo;
import com.example.ecommerce.service.OrdersService;
import jakarta.persistence.criteria.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class OrderServiceImpl implements OrdersService {

    @Autowired
    OrdersRepo ordersRepo;


    @Override
    public Integer saveOrderAndGetId(Integer detailId, String status, float totalAmount, String paymentMethod) {
        return ordersRepo.createOrderAndGetId(detailId, status, totalAmount, paymentMethod);
    }

    @Override
    public void saveOrder(Orders order) {
        ordersRepo.save(order);
    }

    @Override
    public Orders findOrderByCustomerAndOrdersDesc(Customer customer, String status) {
        return ordersRepo.findFirstByCustomerDetail_CustomerIdAndStatusOrderByOrderDateDesc(customer, status);
    }

    @Override
    public Orders findById(Integer id) {
        return ordersRepo.findByOrderId(id);
    }

    @Override
    public ArrayList<Orders> findOrdersByCustomer(Customer customer) {
        return ordersRepo.findAllByCustomerDetail_CustomerId(customer);
    }

    @Override
    public void deleteOrder(Integer id) {
        ordersRepo.deleteById(id);
    }

    @Override
    public ArrayList<Orders> findTop5Date() {
        return ordersRepo.findTop5ByOrderByOrderDateDesc();
    }
}
