package com.luxoft.training.server.model;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: Yuliya
 * Date: 08.09.13
 * Time: 14:38
 * To change this template use File | Settings | File Templates.
 */
public class Paper {
    private Integer paperId;
    private String paperName;
    private Date version;

    public Paper(Integer paperId, String paperName, Date version) {
        this.paperId = paperId;
        this.paperName = paperName;
        this.version = version;
    }

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    public String getPaperName() {
        return paperName;
    }

    public void setPaperName(String paperName) {
        this.paperName = paperName;
    }

    public Date getVersion() {
        return version;
    }

    public void setVersion(Date version) {
        this.version = version;
    }
}
