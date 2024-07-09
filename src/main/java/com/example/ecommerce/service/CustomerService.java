package com.example.ecommerce.service;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.User;

import java.util.List;

public interface CustomerService {
    Customer getCustomerByUserId(User userId);
    void saveCustomer(Customer customer);
    List<Customer> getAllCustomers();
}
