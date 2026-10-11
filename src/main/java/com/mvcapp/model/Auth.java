package com.mvcapp.model;

public class Auth {

    public User authenticate(String username, String password) {

        // Demonstration accounts for classroom use only
        if ("admin".equals(username) && "admin123".equals(password)) {
            return new User(username, password, "admin");
        }

        if ("coach".equals(username) && "coach123".equals(password)) {
            return new User(username, password, "coach");
        }

        if ("trainee".equals(username) && "trainee123".equals(password)) {
            return new User(username, password, "trainee");
        }

        return null;
    }
}
