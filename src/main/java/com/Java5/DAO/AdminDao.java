package com.Java5.DAO;

import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.stereotype.Repository;

import com.Java5.model.Admin;

@Repository
public interface AdminDao extends JpaRepositoryImplementation<Admin, String>{

}
