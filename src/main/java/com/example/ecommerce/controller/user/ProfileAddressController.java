package com.example.ecommerce.controller.user;

import com.example.ecommerce.model.Cart;
import com.example.ecommerce.model.CartItem;
import com.example.ecommerce.model.CustomerDetail;
import com.example.ecommerce.service.*;
import com.example.ecommerce.utils.Authen;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Date;


@Controller
public class ProfileAddressController {

    @Autowired
    ProductService productService;
    @Autowired
    ProductImageService productImageService;
    @Autowired
    CartService cartService;
    @Autowired
    CartItemService cartItemService;

    @Autowired
    CustomerDetailService customerDetailService;




    @GetMapping("/ecommerce/profile-address")
    public String profileAddress(Model model) {

        //get data cart
        float totalPrice = 0;
        Cart cart = cartService.findCartByCustomerId(Authen.customer);
        ArrayList<CartItem> listCartItem = cartItemService.getCartItemsByCart(cart);
        for (CartItem cartItem : listCartItem) {
            totalPrice = totalPrice + (cartItem.getProductDetail().getPrice() * cartItem.getQuantity());
        }
        //show cart
        model.addAttribute("listCustomerDetail", customerDetailService.getCustomerDetailByCustomer(Authen.customer));
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("listCartItem", listCartItem);
        model.addAttribute("productImageService", productImageService);
        return "user/profile-address";
    }


    @PostMapping("/ecommerce/profile-address/save")
    public String saveAddress( Model model, HttpServletRequest request) {
        CustomerDetail customerDetail = new CustomerDetail();
        if(!request.getParameter("idDetail").isEmpty()) {
            customerDetail.setDetailId(Integer.parseInt(request.getParameter("idDetail")));
        } else {
            customerDetail.setCreatedAt(new Date());
        }
        customerDetail.setCustomerId(Authen.customer);
        customerDetail.setNameCustomer(request.getParameter("nameCustomer"));
        customerDetail.setAddressCustomer(request.getParameter("addressCustomer"));
        customerDetail.setPhoneNumber(request.getParameter("phoneNumber"));
        customerDetail.setLastModified(new Date());

        customerDetailService.addCustomerDetail(customerDetail);

        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" +referer;
    }

    @GetMapping("/ecommerce/profile-address/delete")
    public String deleteAddress(@RequestParam("idCustomerDetail") Integer idCustomer, Model model, HttpServletRequest request) {

        CustomerDetail customerDetail = customerDetailService.getDetailById(idCustomer);
        if(customerDetail != null) {
            customerDetailService.deleteCustomerDetail(idCustomer);
        }

        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" +referer;
    }

}
