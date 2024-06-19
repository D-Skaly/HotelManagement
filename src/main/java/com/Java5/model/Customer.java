package com.Java5.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Customer {

    @Id
    @NotEmpty(message = "{NotEmpty.Customer.userName}")
    private String userName;

    @NotBlank(message = "{NotBlank.Customer.password}")
    @Size(min = 6, message = "{Size.Customer.password}")
    private String password;

    @NotBlank(message = "{NotBlank.Customer.fullName}")
    private String fullName;

    @NotBlank(message = "{NotBlank.Customer.email}")
    @Email(message = "{Email.Customer.email}")
    private String email;

    @NotBlank(message = "{NotBlank.Customer.phone}")
    @Pattern(regexp = "^(\\+\\d{1,3}[- ]?)?\\d{10,15}$", message = "{Pattern.Customer.phone}")
    private String phone;

  
    private String cccd;

    private boolean active;
}
