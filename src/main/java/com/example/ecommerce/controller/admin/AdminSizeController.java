package com.example.ecommerce.controller.admin;


import com.example.ecommerce.model.Attributes;
import com.example.ecommerce.model.Categories;
import com.example.ecommerce.service.AttributeService;
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

import java.util.Date;
import java.util.Optional;

@Controller
public class AdminSizeController {

    @Autowired
    AttributeService attributeService;


    @GetMapping("/ecommerce/admin/size")
    public String adminSize(Model model, @RequestParam("page") Optional<Integer> page) {
        Pagination pagination = new Pagination();
        Pageable pageable = PageRequest.of(page.orElse(0), 5);
        Page<Attributes> listSize = attributeService.getAttributesByNameAttribute("size", pageable);
        model.addAttribute("totalPage", listSize.getTotalPages() - 1);
        model.addAttribute("page", listSize);
        model.addAttribute("pagination", pagination.getPage(listSize.getNumber(), listSize.getTotalPages()));

        model.addAttribute("listSize", listSize.getContent());
        return "admin/admin-size";
    }


    @PostMapping("/ecommerce/admin/size/add")
    public String addSize(HttpServletRequest request, Model model) {
        String id= request.getParameter("idSize");
        if(id.trim().isEmpty()) {
            //add
            Attributes attribute = new Attributes();
            attribute.setAttributeName("size");
            attribute.setAttributeValue(request.getParameter("valueSize"));
            attribute.setStatus("Active");
            attribute.setCreatedAt(new Date());
            attribute.setLastModified(new Date());
            attributeService.saveAttribute(attribute);
        } else {
            //update
            Attributes attribute = attributeService.getAttributeById(Integer.parseInt(id));
            attribute.setAttributeValue(request.getParameter("valueSize"));
            attribute.setLastModified(new Date());
            attributeService.saveAttribute(attribute);
        }
        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" +referer;
    }
    @GetMapping("/ecommerce/admin/size/change-status")
    public String changeStatusSize(Model model, @RequestParam("id") Integer id, HttpServletRequest request) {
        Attributes attribute = attributeService.getAttributeById(id);
        if (attribute.getStatus().equals("Active")) {
            attribute.setStatus("InActive");
        } else {
            attribute.setStatus("Active");
        }
        attributeService.saveAttribute(attribute);
        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" + referer;
    }
}
