package com.Java5.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Admin {

	@Id
	private String userName;
	private String password;
	private String fullName;
	private String email;
	private String phone;
	private String address;

}
