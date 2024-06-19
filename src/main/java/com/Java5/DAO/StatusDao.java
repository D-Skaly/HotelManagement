package com.Java5.DAO;

import java.awt.print.Pageable;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.stereotype.Repository;

import com.Java5.model.Status;

@Repository
public interface StatusDao extends JpaRepositoryImplementation<Status, Integer> {

}
