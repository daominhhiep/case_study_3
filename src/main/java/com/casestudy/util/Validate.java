package com.casestudy.util;

public class Validate {
    public static boolean checkName(String name){
        return name.matches("[a-zA-Z].{1,}");
    }
    public static boolean checkEmail(String email){
        return email.matches(".{1,}");
    }
    public static boolean checkPhone(String phonenumber){
        return phonenumber.matches("[0-9]{0,11}");
    }
    public static boolean checkUsername(String username){
        return username.matches("[a-z0-9]{8,16}");
    }
    public static boolean checkPassword(String password){
        return password.matches("[a-zA-z0-9]{8,}");
    }
}
