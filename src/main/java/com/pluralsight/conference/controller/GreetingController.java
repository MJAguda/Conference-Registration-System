package com.pluralsight.conference.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class GreetingController {

    // Display the view for http://localhost:8080/greeting
    @GetMapping("greeting")
    public String greeting(Map<String, Object> model){
        model.put("message", "Hello Jayson");
        return "greeting";
    }
}
