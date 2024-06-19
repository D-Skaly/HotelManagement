package com.Java5.model;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class RoomService {

    @EmbeddedId
    private RoomServiceId id;

//    @ManyToOne
//    @JoinColumn(name = "roomID", insertable = false, updatable = false)
//    private Room room;

    @ManyToOne
    @JoinColumn(name = "serviceID", insertable = false, updatable = false)
    private Service service;
}
