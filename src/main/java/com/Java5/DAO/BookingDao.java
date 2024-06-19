package com.Java5.DAO;

import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.stereotype.Repository;

import com.Java5.model.Booking;

import java.util.Date;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.stereotype.Repository;

@Repository
public interface BookingDao extends JpaRepositoryImplementation<Booking, Integer>{
	@Query("SELECT CASE WHEN COUNT(b) > 0 THEN true ELSE false END FROM Booking b WHERE b.room.id = ?1 AND ((b.checkInDate BETWEEN ?2 AND ?3) OR (b.checkOutDate BETWEEN ?2 AND ?3))")
	boolean existsByRoomIdAndDatesOverlap(int roomID, Date checkInDate, Date checkOutDate);

}
