package com.example.ecommerce.service;

import com.example.ecommerce.model.Customer;
import com.example.ecommerce.model.FavoriteProducts;
import com.example.ecommerce.model.Products;
import com.example.ecommerce.repository.FavoriteProductsRepo;

import java.util.ArrayList;

public interface FavoroiteProductService {
    ArrayList<FavoriteProducts> getFavoriteProducts(Customer customer);


    void addFavoriteProducts(FavoriteProducts favoriteProducts);


    void removeFavoriteProducts(Integer idFavoriteProducts);


    FavoriteProducts getFavoriteProductById(Integer idFavoriteProducts);

    FavoriteProducts getFavoriteProductByProductAndCustomer(Products product, Customer customer);

    Boolean isProducttAndCustomerExist(Products products, Customer customer);
}
