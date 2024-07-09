package com.example.ecommerce.controller.admin;

import com.example.ecommerce.model.Invoices;
import com.example.ecommerce.model.OrderItems;
import com.example.ecommerce.model.Orders;
import com.example.ecommerce.repository.InvoicesRepo;
import com.example.ecommerce.repository.OrderItemRepo;
import com.example.ecommerce.repository.OrdersRepo;
import com.example.ecommerce.service.OrderItemService;
import com.example.ecommerce.service.OrdersService;
import com.example.ecommerce.service.ProductImageService;
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
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
public class AdminOrdersController {


    @Autowired
    OrdersService ordersService;
    @Autowired
    OrderItemService orderItemService;
    @Autowired
    OrdersRepo ordersRepo;
    @Autowired
    OrderItemRepo orderItemRepo;
    @Autowired
    ProductImageService productImageService;
    @Autowired
    InvoicesRepo invoicesRepo;



    @GetMapping("/ecommerce/admin/orders")
    public String AdminOrders(@RequestParam("page") Optional<Integer> page, Model model) {

        Pagination pagination = new Pagination();
        Pageable pageable = PageRequest.of(page.orElse(0), 5);
        Page<Orders> listOrders = ordersRepo.findAll(pageable);
        model.addAttribute("totalPage", listOrders.getTotalPages()-1);
        model.addAttribute("page", listOrders);
        model.addAttribute("pagination", pagination.getPage(listOrders.getNumber(),listOrders.getTotalPages()));

        model.addAttribute("productImageService", productImageService);
        model.addAttribute("listOrders", listOrders.getContent());
        return "admin/admin-order";
    }

    @GetMapping("/ecommerce/admin/orders/find-orderDetail")
    @ResponseBody
    public Map<String, Object> getOrderItems(@RequestParam("idOrder") Integer idOrder) {
        Map<String, Object> response = new HashMap<>();
        Orders order = ordersService.findById(idOrder);

        List<OrderItems> orderItems = orderItemService.getAllOrderItemsByOrderId(order);
        List<String> productImages = new ArrayList<>();
        for (OrderItems orderItem : orderItems) {
            productImages.add(productImageService.getFirstProductImageByProductId(orderItem.getProductDetail().getProductId()).getNameImage());
        }
        response.put("orderItems", orderItems);
        response.put("order", order);
        response.put("productImages", productImages);

        return response;
    }


    @PostMapping("/ecommerce/admin/orders/change-status")
    public String changeStatus(Model model, HttpServletRequest request) {
        Integer orderId = Integer.parseInt(request.getParameter("idOrder"));
        Orders orders = ordersRepo.findById(orderId).get();
        if(request.getParameter("statusOrder").equals("Completed")){
            Invoices invoices = new Invoices();
            invoices.setAmount(orders.getTotalAmount());
            invoices.setCreatedAt(new Date());
            invoices.setInvoiceDate(new Date());
            invoices.setLastModified(new Date());
            invoices.setOrders(orders);
            System.out.println("đúng");
            invoicesRepo.save(invoices);
            System.out.println("sai");

        }
        orders.setStatus(request.getParameter("statusOrder"));
        ordersRepo.save(orders);
        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" +referer;
    }

}
