package com.example.ecommerce.utils;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.repository.CustomerRepo;
import com.example.ecommerce.service.CustomerService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;

public class Authen {

    public static Customer customer = null;

    public static void clear() {
        customer = null;
    }

    public static boolean isLogin(HttpSession session) {
        customer = (Customer) session.getAttribute("customer");
        return customer != null;
    }

    public static String getRole(HttpSession session) {
        if (isLogin(session)) {
            return customer.getUserId().getRole();
        } else {
            return null; // or handle as needed if not logged in
        }
    }
}
