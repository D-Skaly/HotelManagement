package com.Java5.service;

public interface CustomerService2 {
	boolean emailMatches(String username, String email);
    void updatePasswordWithCode(String username, String resetCode);

}
