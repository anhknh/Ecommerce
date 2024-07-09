package com.example.ecommerce.service.impl;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.CustomerDetail;
import com.example.ecommerce.repository.CustomerDetailRepo;
import com.example.ecommerce.service.CustomerDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class CustomerDetailServiceImpl implements CustomerDetailService {

    @Autowired
    CustomerDetailRepo customerDetailRepo;

    @Override
    public ArrayList<CustomerDetail> getCustomerDetailByCustomer(Customer customer) {
        return customerDetailRepo.findByCustomerId(customer);
    }

    @Override
    public CustomerDetail getDetailById(Integer id) {
        return customerDetailRepo.findByDetailId(id);
    }

    @Override
    public void addCustomerDetail(CustomerDetail customerDetail) {
        customerDetailRepo.save(customerDetail);
    }

    @Override
    public void updateCustomerDetail(CustomerDetail customerDetail) {
        customerDetailRepo.save(customerDetail);
    }

    @Override
    public void deleteCustomerDetail(Integer id) {
        customerDetailRepo.deleteById(id);
    }
}
