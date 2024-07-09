package com.example.ecommerce.service.impl;

import com.example.ecommerce.repository.InvoicesRepo;
import com.example.ecommerce.service.InvoicesService;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class InvoicesServiceImpl implements InvoicesService {

    @Autowired
    InvoicesRepo invoicesRepo;


    @Override
    public List<Object[]> getDailyRevenue(int year, int month) {
        return invoicesRepo.findDailyRevenue(year, month);
    }

    @Override
    public Integer findMonthRevenue(int year, int month) {
        return invoicesRepo.findMonthlyRevenue(year, month);
    }
}
