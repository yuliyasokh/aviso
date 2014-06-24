package com.luxoft.training.server.model;

import java.io.UnsupportedEncodingException;

public class Attribute {

    private String id;
    private String description;
    private boolean uiStatus;

    public String getDescription() throws UnsupportedEncodingException {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public boolean isUiStatus() {
        return uiStatus;
    }

    public void setUiStatus(boolean uiStatus) {
        this.uiStatus = uiStatus;
    }
}
