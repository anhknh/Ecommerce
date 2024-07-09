package com.example.ecommerce.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminSettingController {

    @GetMapping("/ecommerce/admin/setting")
    public String adminSetting() {
        return "admin/admin-setting";
    }
}
