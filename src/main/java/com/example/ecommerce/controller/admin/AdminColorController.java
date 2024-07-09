package com.example.ecommerce.controller.admin;

import com.example.ecommerce.model.Attributes;
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
public class AdminColorController {

    @Autowired
    AttributeService attributeService;


    @GetMapping("/ecommerce/admin/color")
    public String adminColor(Model model, @RequestParam("page") Optional<Integer> page) {
        Pagination pagination = new Pagination();
        Pageable pageable = PageRequest.of(page.orElse(0), 5);
        Page<Attributes> listColor = attributeService.getAttributesByNameAttribute("color", pageable);
        model.addAttribute("totalPage", listColor.getTotalPages() - 1);
        model.addAttribute("page", listColor);
        model.addAttribute("pagination", pagination.getPage(listColor.getNumber(), listColor.getTotalPages()));

        model.addAttribute("listColor", listColor.getContent());
        return "admin/admin-color";
    }

    @PostMapping("/ecommerce/admin/color/add")
    public String addColor(HttpServletRequest request, Model model) {
        String id= request.getParameter("idColor");
        if(id.trim().isEmpty()) {
            //add
            Attributes attribute = new Attributes();
            attribute.setAttributeName("color");
            attribute.setAttributeValue(request.getParameter("valueColor"));
            attribute.setStatus("Active");
            attribute.setCreatedAt(new Date());
            attribute.setLastModified(new Date());
            attributeService.saveAttribute(attribute);
        } else {
            //update
            Attributes attribute = attributeService.getAttributeById(Integer.parseInt(id));
            attribute.setAttributeValue(request.getParameter("valueColor"));
            attribute.setLastModified(new Date());
            attributeService.saveAttribute(attribute);
        }
        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" +referer;
    }
    @GetMapping("/ecommerce/admin/color/change-status")
    public String changeStatusColor(Model model, @RequestParam("id") Integer id, HttpServletRequest request) {
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
