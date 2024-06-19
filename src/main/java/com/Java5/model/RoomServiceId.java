package com.Java5.model;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Embeddable;

@Embeddable
public class RoomServiceId implements Serializable {

    private int roomID;
    private int serviceID;

    // Constructors, Getters, Setters, hashCode and equals methods
    public RoomServiceId() {
    }

    public RoomServiceId(int roomID, int serviceID) {
        this.roomID = roomID;
        this.serviceID = serviceID;
    }

    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RoomServiceId that = (RoomServiceId) o;
        return roomID == that.roomID &&
               serviceID == that.serviceID;
    }

    @Override
    public int hashCode() {
        return Objects.hash(roomID, serviceID);
    }
}