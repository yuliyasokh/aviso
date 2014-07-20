package com.luxoft.aviso.server.model;


public class Object {

    private Integer objectId;
    private Attribute objectType;
    private Attribute objectDistrict;
    private Attribute objectSource;
    private String objectLink;
    private String objectDesc;

    public Attribute getObjectDistrict() {
        return objectDistrict;
    }

    public void setObjectDistrict(Attribute objectDistrict) {
        this.objectDistrict = objectDistrict;
    }

    public Integer getObjectId() {
        return objectId;
    }

    public void setObjectId(Integer objectId) {
        this.objectId = objectId;
    }

    public Attribute getObjectType() {
        return objectType;
    }

    public void setObjectType(Attribute objectType) {
        this.objectType = objectType;
    }

    public Attribute getObjectSource() {
        return objectSource;
    }

    public void setObjectSource(Attribute objectSource) {
        this.objectSource = objectSource;
    }

    public String getObjectLink() {
        return objectLink;
    }

    public void setObjectLink(String objectLink) {
        this.objectLink = objectLink;
    }

    public String getObjectDesc() {
        return objectDesc;
    }

    public void setObjectDesc(String objectDesc) {
        this.objectDesc = objectDesc;
    }
}
