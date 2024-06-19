package com.Java5.model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoomType implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int roomTypeID;

	private String roomTypeName;
	private String description;

}
