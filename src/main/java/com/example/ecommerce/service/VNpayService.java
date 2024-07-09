package com.example.ecommerce.service;

import com.example.ecommerce.payment.VNPayRequest;
import jakarta.servlet.http.HttpServletRequest;

public interface VNpayService {
    String  createPayment(VNPayRequest request, HttpServletRequest reqs) throws Exception;
}
