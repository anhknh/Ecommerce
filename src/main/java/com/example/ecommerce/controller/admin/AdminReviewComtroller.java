package com.example.ecommerce.controller.admin;


import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.ProductReviews;
import com.example.ecommerce.repository.ProductReviewRepo;
import com.example.ecommerce.service.ProductReviewService;
import com.example.ecommerce.utils.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
public class AdminReviewComtroller {

    @Autowired
    ProductReviewService productReviewService;
    @Autowired
    ProductReviewRepo productReviewRepo;


    @GetMapping("/ecommerce/admin/reviews")
    public String adminReview(Model model, @RequestParam("page") Optional<Integer> page) {
        Pagination pagination = new Pagination();
        Pageable pageable = PageRequest.of(page.orElse(0), 5);
        Page<ProductReviews> listReviews = productReviewRepo.findAll(pageable);
        model.addAttribute("totalPage", listReviews.getTotalPages() - 1);
        model.addAttribute("page", listReviews);
        model.addAttribute("pagination", pagination.getPage(listReviews.getNumber(), listReviews.getTotalPages()));

        model.addAttribute("listReviews", listReviews.getContent());

        return "admin/admin-review";
    }


    @GetMapping("/ecommerce/admin/reviews/delete")
    public String adminReviewDelete(Model model, @RequestParam("id") Integer id) {
        ProductReviews review = productReviewRepo.findById(id).orElse(null);
        if(review != null) {
            productReviewRepo.delete(review);
        }
        return "redirect:/ecommerce/admin/reviews";
    }

}
