package com.example.ecommerce.service.impl;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.FavoriteProducts;
import com.example.ecommerce.model.Products;
import com.example.ecommerce.repository.FavoriteProductsRepo;
import com.example.ecommerce.service.FavoroiteProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class FavoriteProductServiceImpl implements FavoroiteProductService {

    @Autowired
    FavoriteProductsRepo favoriteProductsRepo;

    @Override
    public ArrayList<FavoriteProducts> getFavoriteProducts(Customer customer) {
        return favoriteProductsRepo.findByCustomer(customer);
    }

    @Override
    public void addFavoriteProducts(FavoriteProducts favoriteProducts) {
        favoriteProductsRepo.save(favoriteProducts);
    }

    @Override
    public void removeFavoriteProducts(Integer idFavoriteProducts) {
        favoriteProductsRepo.deleteById(idFavoriteProducts);
    }

    @Override
    public FavoriteProducts getFavoriteProductById(Integer idFavoriteProducts) {
        return favoriteProductsRepo.findById(idFavoriteProducts).get();
    }

    @Override
    public FavoriteProducts getFavoriteProductByProductAndCustomer(Products product, Customer customer) {
        return favoriteProductsRepo.findByCustomerAndProducts(customer, product);
    }

    @Override
    public Boolean isProducttAndCustomerExist(Products products, Customer customer) {
        return favoriteProductsRepo.existsByProductsAndCustomer(products, customer);
    }

}
