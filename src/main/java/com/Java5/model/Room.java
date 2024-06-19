package com.Java5.model;

import java.io.InputStream;
import java.math.BigDecimal;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Room {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int roomID;

    private String roomNumber;
    private BigDecimal pricePerNight;
    private String image1;
    private String image2;
    private String image3;
    private String image4;
    private String image5;
    private String image6;

    // Thêm trường InputStream cho hình ảnh
    private transient InputStream imageStream;

    // Getter và setter cho trường imageStream
    public InputStream getImageStream() {
        return imageStream;
    }

    public void setImageStream(InputStream imageStream) {
        this.imageStream = imageStream;
    }
    
    @ManyToOne
    @JoinColumn(name = "roomTypeID")
    private RoomType roomType;

    @ManyToOne
    @JoinColumn(name = "statusID")
    private Status status;

}


