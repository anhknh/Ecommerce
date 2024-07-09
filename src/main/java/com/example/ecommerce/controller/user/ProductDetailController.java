package com.example.ecommerce.controller.user;

import com.example.ecommerce.model.*;
import com.example.ecommerce.repository.ProductReviewRepo;
import com.example.ecommerce.service.*;
import com.example.ecommerce.utils.Authen;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class ProductDetailController {

    @Autowired
    ProductService productService;
    @Autowired
    ProductImageService productImageService;
    @Autowired
    ProductDetailService productDetailService;
    @Autowired
    CategoriesService categoriesService;
    @Autowired
    AttributeService attributeService;
    @Autowired
    CartService cartService;
    @Autowired
    CartItemService cartItemService;
    @Autowired
    FavoroiteProductService favoroiteProductService;
    @Autowired
    ProductReviewService productReviewService;
    @Autowired
    CustomerDetailService customerDetailService;

    Integer IdProductpage = 0;
    @Autowired
    private ProductReviewRepo productReviewRepo;


    @GetMapping("/ecommerce/product-detail")
    public String productDetail(Model model, @RequestParam int productId) {
        IdProductpage = productId;
        float totalPrice = 0;
        ArrayList<Attributes> listColor = new ArrayList<>();
        ArrayList<Attributes> listSize = new ArrayList<>();

        Cart cart = cartService.findCartByCustomerId(Authen.customer);
        ArrayList<CartItem> listCartItem = cartItemService.getCartItemsByCart(cart);
        Products products = productService.findProductByProductId(productId);
        ArrayList<Products> listTop4Product = productService.findProductTop4createdAtDesc();
        for (CartItem cartItem : listCartItem) {
            totalPrice = totalPrice + (cartItem.getProductDetail().getPrice() * cartItem.getQuantity());
        }
        List<Integer> listIdColor = productDetailService.getAttributeColor(products.getProductId());
        List<Integer> listIdSize = productDetailService.getAttributeSize(products.getProductId());
        for (int i = 0 ; i < listIdColor.size() ; i++) {
            listColor.add(attributeService.getAttributeById(listIdColor.get(i)));
        }
        for (int i = 0 ; i < listIdSize.size() ; i++) {
            listSize.add(attributeService.getAttributeById(listIdSize.get(i)));
        }


        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("listCartItem", listCartItem);
        model.addAttribute("attributeService", attributeService);
        model.addAttribute("productAttributesService", productDetailService);

        model.addAttribute("productDetail", products);
        model.addAttribute("listCustomerDetail", customerDetailService.getCustomerDetailByCustomer(Authen.customer));
        model.addAttribute("rating", Math.floor(productReviewService.getAverageRatingByProduct(products) * 10) / 10.0);
        model.addAttribute("listReview",productReviewRepo.findByProducts(products));
        model.addAttribute("favoroiteProductService", favoroiteProductService);
        model.addAttribute("productImageService", productImageService);
        model.addAttribute("listTop4Product", listTop4Product);
        model.addAttribute("productDetailService", productDetailService);
        model.addAttribute("customer", Authen.customer);
        model.addAttribute("listImageProduct", productImageService.getProductImageByProductId(products));
        model.addAttribute("ListColorProductDetail", listColor);
        model.addAttribute("ListSizeProductDetail", listSize);
        return "user/product-detail";
    }

    @GetMapping("/ecommerce/product-detail/find-detail")
    public ResponseEntity<ProductDetail> getProductDetails(@RequestParam Integer sizeId, @RequestParam Integer colorId) {
        ProductDetail details = productDetailService.getByColorAndSize(colorId, sizeId, IdProductpage);
        return ResponseEntity.ok(details);
    }

    @GetMapping("/ecommerce/product-detail/find-size")
    public ResponseEntity<List<Integer>> getSizesByColor(@RequestParam Integer colorId) {
        List<Integer> sizes = productDetailService.getSizeIdByProductIdAndColorId(IdProductpage, colorId);
        return ResponseEntity.ok(sizes);
    }


    @PostMapping("/ecommerce/product-detail/add-comment")
    public String addComment(@RequestParam("idProduct") int productId, HttpServletRequest request, Model model) {
        ProductReviews productReviews = new ProductReviews();
        productReviews.setProducts(productService.findProductByProductId(productId));
        productReviews.setComment(request.getParameter("comment"));
        productReviews.setEmail(request.getParameter("email"));
        productReviews.setReviewDate(new Date());
        productReviews.setCreatedAt(new Date());
        productReviews.setLastModified(new Date());
        productReviews.setRating(Integer.parseInt(request.getParameter("poinReview")));
        productReviews.setCustomerDetail(customerDetailService.getDetailById(Integer.parseInt(request.getParameter("customerDetail"))));
        productReviewRepo.save(productReviews);
        //get url request
        String referer = request.getHeader("referer");
        //reload page
        return "redirect:" +referer;
    }
}
