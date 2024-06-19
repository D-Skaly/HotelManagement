package com.Java5.model;

import java.math.BigDecimal;
import java.util.Date;

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
public class Payment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int paymentID;

    @ManyToOne
    @JoinColumn(name = "bookingID")
    private Booking booking;

    private Date paymentDate;
    private BigDecimal amount;

    @ManyToOne
    @JoinColumn(name = "paymentMethodID")
    private PaymentMethod paymentMethod;
}
