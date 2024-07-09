package com.example.ecommerce.controller.user;


import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.User;
import com.example.ecommerce.service.CustomerService;
import com.example.ecommerce.service.UsersService;
import com.example.ecommerce.utils.Authen;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;

@Controller
public class LoginController {

    @Autowired
    UsersService usersService;
    @Autowired
    CustomerService customerService;

    Authen authen = new Authen();

    private ArrayList<User> listUser = new ArrayList<>();

    @GetMapping("/")
    public String home(Model model,HttpSession session) {
        // Kiểm tra xem người dùng đã đăng nhập hay chưa
        if (Authen.isLogin(session)) {
            return "redirect:/ecommerce/home"; // Chuyển hướng đến trang chính sau khi đăng nhập
        } else {
            return "redirect:/login"; // Chuyển hướng đến trang đăng nhập
        }
    }

    @GetMapping("/login")
    public String login() {
        return "login/login";
    }


    @GetMapping("/admin/login")
    public String loginAdmin(Model model) {
        return "login/login-admin";
    }


    @PostMapping("/login-user")
    public String loginUser(HttpSession session, @ModelAttribute("userLogin") User userLogin, Model model) {
        System.out.println("check loghin");
        User user = usersService.login(userLogin.getUsername(), userLogin.getPasswordHash());
        if (user != null) {
            Customer customer = customerService.getCustomerByUserId(user);
            session.setAttribute("customer", customer);
            Authen.customer = (Customer) session.getAttribute("customer");
            return "redirect:/ecommerce/home";
        } else {
            model.addAttribute("message", "Invalid username or password");
            return "redirect:/login";
        }
    }

    @PostMapping("/login-admin")
    public String loginAdmin(HttpSession session, @ModelAttribute("userLogin") User userLogin, Model model) {
        User user = usersService.login(userLogin.getUsername(), userLogin.getPasswordHash());
        if (user != null) {
            Customer customer = customerService.getCustomerByUserId(user);
            session.setAttribute("customer", customer);
            if("admin".equals(user.getRole())) {
                Authen.customer = (Customer) session.getAttribute("customer");
                return "redirect:/ecommerce/admin/dashbroad";
            } else {
                return "redirect:/admin/login";
            }
        } else {
            model.addAttribute("message", "Invalid username or password");
            return "redirect:/admin/login";
        }
    }


    @GetMapping("/login/forgot-password")
    public String forgotPassword(Model model) {
        return "forgot-password";
    }

    @GetMapping("/signup")
    public String signup(Model model) {
        return "signup/signup";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        System.out.println("check");
        session.invalidate();
        Authen.customer = null;
        System.out.println(Authen.customer);
        return "redirect:/login";
    }
}
