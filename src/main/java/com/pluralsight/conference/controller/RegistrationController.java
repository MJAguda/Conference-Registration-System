package com.pluralsight.conference.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.pluralsight.conference.model.Registration;

@Controller
public class RegistrationController {
    
    // Display the view for http://localhost:8080/registration
    @GetMapping("registration")
    public String getRegistration(@ModelAttribute ("registration") Registration registration){

        return "registration";
    }

    // HTTP POST requests to the "/registration" endpoint if the Add Registration button is clicked, wherein it processes form data, prints the name from the Registration object to the console
    @PostMapping("registration")
    public String addRegistration(@ModelAttribute ("registration") Registration registration){

        System.out.println("Registration: " + registration.getName());

        return "registration";
    }
}
