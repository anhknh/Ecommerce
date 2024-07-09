package com.example.ecommerce.service;

import com.example.ecommerce.model.User;

import java.util.ArrayList;

public interface UsersService {
    ArrayList<User> getUsers();
    User getUserByName(String username);
    User getUserById(Integer id);
    User login(String username, String password);
}
