package com.example.ecommerce.controller.admin;

import com.example.ecommerce.service.InvoicesService;
import com.example.ecommerce.service.OrdersService;
import com.example.ecommerce.utils.Authen;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.LocalDate;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
public class AdminDashBroadController {


    @Autowired
    OrdersService ordersService;
    @Autowired
    InvoicesService invoicesService;
    
    @GetMapping("/ecommerce/admin/dashbroad")
    public String adminDashBroad(Model model) {
        model.addAttribute("listTop5Orrder", ordersService.findTop5Date());
        LocalDate currentdate = LocalDate.now();
        Integer totalMonth = invoicesService.findMonthRevenue(currentdate.getYear(), currentdate.getMonth().getValue());
        model.addAttribute("totalMonth", totalMonth);
        return "admin/admin-dashboard";
    }

    @GetMapping("/ecommerce/daili-revenue")
    @ResponseBody
    public List<Map<String, Object>> getDailyRevenue(@RequestParam int year, @RequestParam int month) {
        List<Object[]> rawRevenueData = invoicesService.getDailyRevenue(year, month);
        System.out.println(month);
        System.out.println(year);
        System.out.println(rawRevenueData);
        return rawRevenueData.stream()
                .map(data -> {
                    Map<String, Object> map = new HashMap<>();
                    map.put("day", data[0]);
                    map.put("revenue", data[1]);
                    return map;
                })
                .collect(Collectors.toList());
    }
}
