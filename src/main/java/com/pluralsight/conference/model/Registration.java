package com.pluralsight.conference.model;

import jakarta.validation.constraints.NotEmpty;

public class Registration {
    
    // @NotEmpty is a validation annotation that checks if the field is not empty 
    // making sure that the user enters a value for the name field
    @NotEmpty
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}
