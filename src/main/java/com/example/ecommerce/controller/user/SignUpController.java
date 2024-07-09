package com.example.ecommerce.controller.user;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.User;
import com.example.ecommerce.repository.CustomerRepo;
import com.example.ecommerce.repository.UserRepo;
import com.example.ecommerce.service.UsersService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Date;

@Controller
public class SignUpController {

    @Autowired
    UserRepo userRepo;
    @Autowired
    CustomerRepo customerRepo;


    @PostMapping("/signup/add")
    public String addUser(Model model, HttpServletRequest request) {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        Integer id = userRepo.createUserAndGetId(username, pass, email);
        Customer customer = new Customer();
        System.out.println(userRepo.findByUserId(id).toString());
        customer.setUserId(userRepo.findByUserId(id));
        customer.setStatus("Active");
        customer.setCreatedAt(new Date());
        customer.setLastModified(new Date());
        customerRepo.save(customer);
        return "redirect:/login";
    }
}
