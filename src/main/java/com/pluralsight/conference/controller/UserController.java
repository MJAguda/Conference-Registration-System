package com.pluralsight.conference.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pluralsight.conference.model.User;

@RestController // It makes everythine by default a JSON body
@RequestMapping("api/v1/user")
public class UserController {

    @GetMapping("hello")
    public User getUser(){
        User user = new User();

        user.setId(1234);
        user.setName("Jayson");
        return user;
    }
    
}
