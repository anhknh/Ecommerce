package com.example.ecommerce.service.impl;

import com.example.ecommerce.model.Categories;
import com.example.ecommerce.repository.CategoriesRepo;
import com.example.ecommerce.service.CategoriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class CategoriesServiceImpl implements CategoriesService {

    @Autowired
    CategoriesRepo categoriesRepo;

    @Override
    public ArrayList<Categories> getAllCategories() {
        return (ArrayList<Categories>) categoriesRepo.findAll();
    }

    @Override
    public Categories getCategoriesById(int id) {
        return categoriesRepo.findById(id).get();
    }
}
