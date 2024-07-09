package com.example.ecommerce.service;

import java.util.List;

public interface InvoicesService {

    List<Object[]> getDailyRevenue(int year, int month);
    Integer findMonthRevenue(int year, int month);
}
