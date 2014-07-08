package com.luxoft.aviso.server.model;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: Yuliya
 * Date: 08.09.13
 * Time: 14:38
 * To change this template use File | Settings | File Templates.
 */
public class SourceVersion {
    private Integer sourceVersionId;
    private Attribute source;
    private Date version;
    private String status;


    public Integer getSourceVersionId() {
        return sourceVersionId;
    }

    public void setSourceVersionId(Integer sourceVersionId) {
        this.sourceVersionId = sourceVersionId;
    }

    public Date getVersion() {
        return version;
    }

    public void setVersion(Date version) {
        this.version = version;
    }

    public Attribute getSource() {
        return source;
    }

    public void setSource(Attribute source) {
        this.source = source;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
