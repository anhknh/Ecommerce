package com.example.ecommerce.controller.admin;

import com.example.ecommerce.model.Categories;
import com.example.ecommerce.model.ProductDetail;
import com.example.ecommerce.model.ProductImages;
import com.example.ecommerce.model.Products;
import com.example.ecommerce.repository.CategoriesRepo;
import com.example.ecommerce.repository.ProductDetailRepo;
import com.example.ecommerce.repository.ProductImagesRepo;
import com.example.ecommerce.repository.ProductRepo;
import com.example.ecommerce.service.AttributeService;
import com.example.ecommerce.service.CategoriesService;
import com.example.ecommerce.service.ProductImageService;
import com.example.ecommerce.service.ProductService;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
public class AdminProductController {


    @Autowired
    ProductService productService;
    @Autowired
    ProductRepo productRepo;
    @Autowired
    ProductDetailRepo productDetailRepo;
    @Autowired
    ProductImageService productImageService;
    @Autowired
    CategoriesService categoriesService;
    @Autowired
    AttributeService attributeService;
    @Autowired
    private CategoriesRepo categoriesRepo;
    @Autowired
    private ProductImagesRepo productImagesRepo;

    @GetMapping("/ecommerce/admin/product")
    public String adminProduct(Model model, @RequestParam("page") Optional<Integer> page) {
        Pagination pagination = new Pagination();
        Pageable pageable = PageRequest.of(page.orElse(0), 5);
        Page<Products> listAllProducts = productRepo.findAll(pageable);
        model.addAttribute("totalPage", listAllProducts.getTotalPages()-1);
        model.addAttribute("page", listAllProducts);
        model.addAttribute("pagination", pagination.getPage(listAllProducts.getNumber(),listAllProducts.getTotalPages()));

        model.addAttribute("productImageService", productImageService);
        model.addAttribute("listAllProducts", listAllProducts.getContent());
        return "admin/admin-product";
    }


    @GetMapping("/ecommerce/admin/product-detail")
    public String adminProductDetail(Model model, @RequestParam("productId") Integer productId, @RequestParam("page") Optional<Integer> page) {
        Pagination pagination = new Pagination();
        Pageable pageable = PageRequest.of(page.orElse(0), 5);
        Page<ProductDetail> listAllProductDetail = productDetailRepo.findByProductId(productService.findProductByProductId(productId), pageable);

        model.addAttribute("product", productService.findProductByProductId(productId));
        model.addAttribute("totalPage", listAllProductDetail.getTotalPages()-1);
        model.addAttribute("page", listAllProductDetail);
        model.addAttribute("pagination", pagination.getPage(listAllProductDetail.getNumber(),listAllProductDetail.getTotalPages()));

        model.addAttribute("productId", productId);
        model.addAttribute("productImageService", productImageService);
        model.addAttribute("listAllProductDetail", listAllProductDetail.getContent());
        return "admin/admin-product-detail";
    }

    @GetMapping("/ecommerce/admin/product-manage")
    public String adminProductManage(Model model, @RequestParam("productId") Optional<Integer> productId) {
        Integer idProduct = productId.orElse(null);
        if(idProduct != null) {
            Products products = productService.findProductByProductId(idProduct);
            model.addAttribute("product", products);
            model.addAttribute("listImgae", productImageService.getProductImageByProductId(products));
        }
        model.addAttribute("listCategories", categoriesService.getAllCategories());
        return "admin/admin-product-manage";
    }

    @PostMapping("/ecommerce/admin/product-manage/add")
    public String addProduct(MultipartHttpServletRequest request, Model model) {
        String productId = request.getParameter("productId");
        boolean checkFile = true;
        List<MultipartFile> files = request.getFiles("imageName");
        for (MultipartFile file : files) {
            if(file.isEmpty()) {
                checkFile = false;
                break;
            }
        }
        if(productId.isEmpty()) {
            //add
            String productName = request.getParameter("productName");
            String description = request.getParameter("description");
            Integer categoryId = Integer.parseInt(request.getParameter("categories"));
            String status = request.getParameter("status");


            Integer productIdAdd = productService.addProductAndGetId(productName, description, categoryId, status);

            for (MultipartFile file : files) {
                ProductImages productImages = new ProductImages();
                productImages.setProductId(productService.findProductByProductId(productIdAdd));
                productImages.setNameImage(file.getOriginalFilename());
                productImages.setCreatedAt(new Date());
                productImages.setLastModified(new Date());
                productImageService.addProductImages(productImages);
            }
        } else {
            //update
            Integer id = Integer.parseInt(productId);
            Products products = productService.findProductByProductId(id);
            //set new image
            if(checkFile) {
                productImageService.deleteByProductImages(products.getProductId());
                for (MultipartFile file : files) {
                    ProductImages productImages = new ProductImages();
                    productImages.setProductId(products);
                    productImages.setNameImage(file.getOriginalFilename());
                    productImages.setCreatedAt(new Date());
                    productImages.setLastModified(new Date());
                    productImageService.addProductImages(productImages);
                }
            }
            //set data product
            products.setProductName(request.getParameter("productName"));
            products.setDescription(request.getParameter("description"));
            products.setLastModified(new Date());
            Categories categories = categoriesService.getCategoriesById(Integer.parseInt(request.getParameter("categories")));
            products.setCategoryId(categories);
            products.setStatus(request.getParameter("status"));
            productRepo.save(products);
        }
        return "redirect:/ecommerce/admin/product";
    }


    @GetMapping("/ecommerce/admin/product-detail-manage")
    public String adminProductDetailManege(Model model, @RequestParam("productId") Integer productId, @RequestParam("productDetailId") Optional<Integer> productDetailId) {

        Integer idProductDetail = productDetailId.orElse(null);
        if(idProductDetail != null) {
            ProductDetail productDetail = productDetailRepo.findById(idProductDetail).get();
            model.addAttribute("productDetail", productDetail);
        }

        Products product = productService.findProductByProductId(productId);
        model.addAttribute("product", product);
        model.addAttribute("listCategories", categoriesService.getAllCategories());
        model.addAttribute("ListAttributesColor", attributeService.getAttributesByNameAttribute("color"));
        model.addAttribute("ListAttributesSize", attributeService.getAttributesByNameAttribute("size"));
        return "admin/admin-add-product-detail";
    }

    @PostMapping("/ecommerce/admin/product-detail-manage/add")
    public String addProductDetail(@RequestParam("productId") Integer productId, HttpServletRequest request, Model model) {
        String productDetailId = request.getParameter("productDetailId");
        System.out.println(productDetailId);
        if(productDetailId.isEmpty()) {
            ProductDetail productDetail = new ProductDetail();
            productDetail.setProductId(productService.findProductByProductId(productId));
            productDetail.setPrice(Float.parseFloat(request.getParameter("price")));
            productDetail.setQuantity(Integer.parseInt(request.getParameter("quantity")));
            productDetail.setStatus(request.getParameter("status"));
            productDetail.setAttributeColor(attributeService.getAttributeById(Integer.parseInt(request.getParameter("color"))));
            productDetail.setAttributeSize(attributeService.getAttributeById(Integer.parseInt(request.getParameter("size"))));
            productDetail.setCreatedAt(new Date());
            productDetail.setLastModified(new Date());
            productDetailRepo.save(productDetail);
        } else {
            Integer id = Integer.parseInt(productDetailId);
            ProductDetail productDetail = productDetailRepo.findById(id).get();
            productDetail.setPrice(Float.parseFloat(request.getParameter("price")));
            productDetail.setQuantity(Integer.parseInt(request.getParameter("quantity")));
            productDetail.setStatus(request.getParameter("status"));
            productDetail.setAttributeColor(attributeService.getAttributeById(Integer.parseInt(request.getParameter("color"))));
            productDetail.setAttributeSize(attributeService.getAttributeById(Integer.parseInt(request.getParameter("size"))));
            productDetail.setLastModified(new Date());
            productDetailRepo.save(productDetail);
        }

        return "redirect:/ecommerce/admin/product-detail?productId=" + productId;
    }

}
