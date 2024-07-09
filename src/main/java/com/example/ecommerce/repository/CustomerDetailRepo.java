package com.example.ecommerce.repository;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.CustomerDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface CustomerDetailRepo extends JpaRepository<CustomerDetail, Integer> {
    ArrayList<CustomerDetail> findByCustomerId(Customer customerId);
    CustomerDetail findByDetailId(Integer detailId);
}
