package com.Java5.DAO;

import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.stereotype.Repository;

import com.Java5.model.Payment;

@Repository
public interface PaymentDao  extends JpaRepositoryImplementation<Payment, Integer>{

}
