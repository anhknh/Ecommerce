package com.example.ecommerce.controller.admin;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.Products;
import com.example.ecommerce.model.User;
import com.example.ecommerce.repository.CustomerRepo;
import com.example.ecommerce.service.CustomerDetailService;
import com.example.ecommerce.service.CustomerService;
import com.example.ecommerce.service.UsersService;
import com.example.ecommerce.utils.Pagination;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
public class AdminCustomerController {

    @Autowired
    CustomerService customerService;
    @Autowired
    CustomerRepo customerRepo;
    @Autowired
    CustomerDetailService customerDetailService;
    @Autowired
    UsersService usersService;

    @GetMapping("/ecommerce/admin/customer")
    public String adminCustomer(Model model, @RequestParam("page") Optional<Integer> page) {
        Pagination pagination = new Pagination();
        Pageable pageable = PageRequest.of(page.orElse(0), 5);
        Page<Customer> listCustomer = customerRepo.findAll(pageable);
        model.addAttribute("totalPage", listCustomer.getTotalPages() - 1);
        model.addAttribute("page", listCustomer);
        model.addAttribute("pagination", pagination.getPage(listCustomer.getNumber(), listCustomer.getTotalPages()));

        model.addAttribute("customerDetailService", customerDetailService);
        model.addAttribute("listCustomer", listCustomer.getContent());
        return "admin/admin-customer";
    }

    @GetMapping("/ecommerce/admin/customer/change-status")
    public String changeStatus(Model model, @RequestParam("id") Integer id, HttpServletRequest request) {
        Customer customer = customerRepo.findById(id).get();
        if (customer.getStatus().equals("Active")) {
            customer.setStatus("InActive");
        } else {
            customer.setStatus("Active");
        }
        customerRepo.save(customer);
        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" + referer;
    }


}
