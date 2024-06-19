package com.Java5.DAO;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.Java5.model.Employee;

@Repository
public interface EmployeeDao  extends JpaRepositoryImplementation<Employee, String>{
    Page<Employee> findAll(Pageable pageable);

    @Query("SELECT e FROM Employee e WHERE e.fullName LIKE %:keyword% OR e.userName LIKE %:keyword% OR e.email LIKE %:keyword%")
    Page<Employee> findByKeyword(@Param("keyword") String keyword, Pageable pageable);
}
