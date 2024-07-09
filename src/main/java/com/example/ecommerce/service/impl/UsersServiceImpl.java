package com.example.ecommerce.service.impl;

import com.example.ecommerce.model.User;
import com.example.ecommerce.repository.UserRepo;
import com.example.ecommerce.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    UserRepo userRepo;

    @Override
    public ArrayList<User> getUsers() {
        return (ArrayList<User>) userRepo.findAll();
    }

    @Override
    public User getUserByName(String username) {
        return userRepo.findByUsername(username);
    }

    @Override
    public User getUserById(Integer id) {
        return userRepo.findByUserId(id);
    }

    @Override
    public User login(String username, String password) {
        return userRepo.findByUsernameAndPasswordHash(username,password);
    }
}
