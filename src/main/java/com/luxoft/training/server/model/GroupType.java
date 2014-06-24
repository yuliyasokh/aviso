package com.luxoft.training.server.model;

public enum GroupType {

    SOURCE("SRC"),
    TYPE("TYP"),
    DISTRICT("DSTR"),
    NUMBER_OF_ROOMS("NRM");

    private String code;

    GroupType(String code) {
        this.code = code;
    }

    public String getCode(){
        return code;
    }
}
