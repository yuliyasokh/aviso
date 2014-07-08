package com.luxoft.aviso.server.model;


import java.util.Date;

public class Phone {

    private Integer phoneId;
    private String phoneNumber;
    private String phoneDescription;
    private Attribute phoneSource;
    private Date phoneAddedDate;
    private Date updateDate;
    private Integer phoneStatus;

    public Integer getPhoneId() {
        return phoneId;
    }

    public void setPhoneId(Integer phoneId) {
        this.phoneId = phoneId;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPhoneDescription() {
        return phoneDescription;
    }

    public void setPhoneDescription(String phoneDescription) {
        this.phoneDescription = phoneDescription;
    }

    public Attribute getPhoneSource() {
        return phoneSource;
    }

    public void setPhoneSource(Attribute phoneSource) {
        this.phoneSource = phoneSource;
    }

    public Date getPhoneAddedDate() {
        return phoneAddedDate;
    }

    public void setPhoneAddedDate(Date phoneAddedDate) {
        this.phoneAddedDate = phoneAddedDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Integer getPhoneStatus() {
        return phoneStatus;
    }

    public void setPhoneStatus(Integer phoneStatus) {
        this.phoneStatus = phoneStatus;
    }
}
