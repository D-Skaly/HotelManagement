package com.Java5.DAO;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.Java5.model.Customer;

@Repository
public interface CustomerDao extends JpaRepositoryImplementation<Customer, String> {
	boolean existsByUserName(String userName);

	Customer findByEmail(String email);

	Page<Customer> findAll(Pageable pageable);

	@Query("SELECT c FROM Customer c WHERE c.fullName LIKE %:keyword% OR c.userName LIKE %:keyword% OR c.email LIKE %:keyword%")
	Page<Customer> findByKeyword(@Param("keyword") String keyword, Pageable pageable);
}
