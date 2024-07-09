package com.example.ecommerce.controller.admin;

import com.example.ecommerce.model.Categories;
import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.ProductReviews;
import com.example.ecommerce.repository.CategoriesRepo;
import com.example.ecommerce.service.CartItemService;
import com.example.ecommerce.service.CategoriesService;
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
public class AdminCategoryController {

    @Autowired
    CategoriesService categoriesService;
    @Autowired
    CategoriesRepo categoriesRepo;


    @GetMapping("/ecommerce/admin/categories")
    public String adminCategories(Model model, @RequestParam("page") Optional<Integer> page) {
        Pagination pagination = new Pagination();
        Pageable pageable = PageRequest.of(page.orElse(0), 5);
        Page<Categories> listCategories = categoriesRepo.findAll(pageable);
        model.addAttribute("totalPage", listCategories.getTotalPages() - 1);
        model.addAttribute("page", listCategories);
        model.addAttribute("pagination", pagination.getPage(listCategories.getNumber(), listCategories.getTotalPages()));

        model.addAttribute("listCategories", listCategories.getContent());
        return "admin/admin-categories";
    }

    @PostMapping("/ecommerce/admin/categories/add")
    public String addCategory(HttpServletRequest request, Model model) {
        String id= request.getParameter("idCategory");
        if(id.trim().isEmpty()) {
            //add
            Categories categories =new Categories();
            categories.setCategoryName(request.getParameter("categoryName"));
            categories.setDescription(request.getParameter("description"));
            categories.setStatus("Active");
            categories.setCreatedAt(new Date());
            categories.setLastModified(new Date());
            categoriesRepo.save(categories);
        } else {
            //update
            Categories categories = categoriesService.getCategoriesById(Integer.parseInt(request.getParameter("idCategory")));
            categories.setCategoryName(request.getParameter("categoryName"));
            categories.setDescription(request.getParameter("description"));
            categories.setLastModified(new Date());
            categoriesRepo.save(categories);
        }

        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" +referer;
    }

    @GetMapping("/ecommerce/admin/categories/change-status")
    public String changeStatus(Model model, @RequestParam("id") Integer id, HttpServletRequest request) {
        Categories categories  = categoriesRepo.findById(id).get();
        if (categories.getStatus().equals("Active")) {
            categories.setStatus("InActive");
        } else {
            categories.setStatus("Active");
        }
        categoriesRepo.save(categories);
        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" + referer;
    }

}
