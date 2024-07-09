package com.example.ecommerce.service;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.CustomerDetail;

import java.util.ArrayList;

public interface CustomerDetailService {

    ArrayList<CustomerDetail> getCustomerDetailByCustomer(Customer customer);
    CustomerDetail getDetailById(Integer id);

    void addCustomerDetail(CustomerDetail customerDetail);

    void updateCustomerDetail(CustomerDetail customerDetail);
    void deleteCustomerDetail(Integer id);
}
