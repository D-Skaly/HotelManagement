package com.Java5.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Java5.model.RoomService;
import com.Java5.model.RoomServiceId;

@Repository
public interface RoomServiceDao extends JpaRepository<RoomService, RoomServiceId> {
}

