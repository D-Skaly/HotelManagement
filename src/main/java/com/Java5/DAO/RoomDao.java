package com.Java5.DAO;

import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.Java5.model.Room;

@Repository
public interface RoomDao extends JpaRepositoryImplementation<Room, Integer> {
	@Query("SELECT r FROM Room r")
	Page<Room> findRoomPage(Pageable pageable);

	Page<Room> findAll(Pageable pageable);

	@Query("SELECT r FROM Room r WHERE r.roomNumber LIKE %:keyword%")
	Page<Room> findByKeyword(@Param("keyword") String keyword, Pageable pageable);
}
