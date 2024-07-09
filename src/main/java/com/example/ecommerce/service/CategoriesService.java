package com.example.ecommerce.service;

import com.example.ecommerce.model.Categories;

import java.util.ArrayList;

public interface CategoriesService {
    ArrayList<Categories> getAllCategories();
    Categories getCategoriesById(int id);
}
