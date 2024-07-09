package com.example.ecommerce.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProfileChangePassController {

    @GetMapping("/ecommerce/profile-change-password")
    public String profileChangePassword(Model model) {
        return "user/profile-change-password";
    }
}
