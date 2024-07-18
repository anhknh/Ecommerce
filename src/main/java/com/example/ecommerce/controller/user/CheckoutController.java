package com.example.ecommerce.controller.user;

import com.example.ecommerce.model.*;
import com.example.ecommerce.payment.VNPayRequest;
import com.example.ecommerce.service.*;
import com.example.ecommerce.utils.Authen;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class CheckoutController {


    @Autowired
    ProductService productService;
    @Autowired
    ProductImageService productImageService;
    @Autowired
    ProductDetailService productDetailService;
    @Autowired
    AttributeService attributeService;
    @Autowired
    CustomerDetailService customerDetailService;
    @Autowired
    OrderItemService orderItemService;
    @Autowired
    OrdersService ordersService;
    @Autowired
    CartService cartService;
    @Autowired
    CartItemService cartItemService;
    @Autowired
    VNpayService vnpayService;

    private Integer detailId = null;
    private List<String> idItemCart;
    float totalPrice = 0;

    @GetMapping("/ecommerce/checkout")
    public String checkout(Model model, @RequestParam(name = "productCheck", required = false) List<String> productCheck) {
        ArrayList<CartItem> listCartItem = new ArrayList<>();
        idItemCart = productCheck;
        for (int i = 0; i < productCheck.size(); i++) {
            Integer idCartItem = Integer.parseInt(productCheck.get(i));
            listCartItem.add(cartItemService.getCartItemByCartItemId(idCartItem));
        }
        for (CartItem cartItem : listCartItem) {
            totalPrice = totalPrice + (cartItem.getProductDetail().getPrice() * cartItem.getQuantity());
        }
        if (detailId != null) {
            model.addAttribute("customerDetailDefault", customerDetailService.getDetailById(detailId));
        } else {
            model.addAttribute("customerDetailDefault", customerDetailService.getCustomerDetailByCustomer(Authen.customer).get(0));
            detailId = customerDetailService.getCustomerDetailByCustomer(Authen.customer).get(0).getDetailId();
        }
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("listCartItem", listCartItem);
        model.addAttribute("productImageService", productImageService);
        model.addAttribute("listCustomerDetail", customerDetailService.getCustomerDetailByCustomer(Authen.customer));
        return "user/checkout";
    }


    @GetMapping("/ecommerce/checkout/change-address")
    public String changeAddress(Model model, @RequestParam(name = "idDetail") Integer idDetail, HttpServletRequest request) {
        detailId = idDetail;
        totalPrice = 0;
        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" + referer;
    }


    @GetMapping("/ecommerce/checkout/order")
    public String changeOrderStatus(@RequestParam("payment") String payment, Model model, HttpServletRequest reqs, HttpServletResponse response) throws Exception {

        Integer idOrder = ordersService.saveOrderAndGetId(detailId, "Pending", totalPrice, payment);
        Orders orders = ordersService.findById(idOrder);
        float amount = (orders.getTotalAmount() + 3) * 1000;
        DecimalFormat df = new DecimalFormat("#.##"); // Định dạng số thập phân với tối đa hai chữ số sau dấu chấm
        String formattedTotalAmount = df.format(amount);
        if(payment.equals("VNpay")) {
            VNPayRequest request = new VNPayRequest();
            request.setAmount(String.valueOf(formattedTotalAmount));
            request.setBankCode("NCB");
            request.setOrderIdSuccess(String.valueOf(idOrder));
            // Gán các giá trị khác cho request
            String paymentUrl = vnpayService.createPayment(request, reqs);
            totalPrice = 0;
            response.sendRedirect(paymentUrl);
        } else {
            for(int i = 0; i < idItemCart.size(); i++){
                Integer idCartItem = Integer.parseInt(idItemCart.get(i));
                CartItem cartItem = cartItemService.getCartItemByCartItemId(idCartItem);
                OrderItems orderItems = new OrderItems();
                orderItems.setProductDetail(cartItem.getProductDetail());
                orderItems.setQuantity(cartItem.getQuantity());
                orderItems.setPrice(cartItem.getProductDetail().getPrice());
                orderItems.setOrderId(ordersService.findById(idOrder));
                orderItems.setCreatedAt(new Date());
                orderItems.setLastModified(new Date());
                orderItemService.saveOrderItem(orderItems);
                cartItemService.deleteCartItem(cartItem);
                orders.setStatus("Processing");
                orders.setLastModified(new Date());
                ordersService.saveOrder(orders);
            }
        }
        totalPrice = 0;
        detailId = null;
        model.addAttribute("listCartItem", cartItemService.getCartItemsByCart(cartService.findCartByCustomerId(Authen.customer)));
        return "user/successful-order";
    }

    @GetMapping("/ecommerce/checkout/payment-info")
    public String paymentInfo(Model model,
        @RequestParam("vnp_ResponseCode") String status,
        @RequestParam("vnp_BankCode") String bankCode,
        @RequestParam("vnp_Amount") String amount,
        @RequestParam("vnp_OrderInfo") String vnp_OrderInfo

    ) {

        Integer orderId = null;
        String[] infoParts = vnp_OrderInfo.split(" - ");
        for (String part : infoParts) {
            // Kiểm tra và lấy giá trị của OrderID
            if (part.startsWith("OrderID: ")) {
                String orderIdSuccess = part.replace("OrderID: ", "").trim();
                orderId = Integer.parseInt(orderIdSuccess);
            }
        }
        if(status.equals("00")) {
            for(int i = 0; i < idItemCart.size(); i++){
                Integer idCartItem = Integer.parseInt(idItemCart.get(i));
                CartItem cartItem = cartItemService.getCartItemByCartItemId(idCartItem);
                OrderItems orderItems = new OrderItems();
                orderItems.setProductDetail(cartItem.getProductDetail());
                orderItems.setQuantity(cartItem.getQuantity());
                orderItems.setPrice(cartItem.getProductDetail().getPrice());
                orderItems.setOrderId(ordersService.findById(orderId));
                orderItems.setCreatedAt(new Date());
                orderItems.setLastModified(new Date());
                orderItemService.saveOrderItem(orderItems);
                cartItemService.deleteCartItem(cartItem);
                Orders orders = ordersService.findById(orderId);
                orders.setStatus("Processing");
                orders.setLastModified(new Date());
                ordersService.saveOrder(orders);
            }

            model.addAttribute("listCartItem", cartItemService.getCartItemsByCart(cartService.findCartByCustomerId(Authen.customer)));
            return "user/successful-order";
        } else{
            ordersService.deleteOrder(orderId);
            model.addAttribute("listCartItem", cartItemService.getCartItemsByCart(cartService.findCartByCustomerId(Authen.customer)));
            return "user/fail-order";
        }
    }
}
