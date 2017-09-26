package org.fjh.entity;

import java.util.Date;

public class Reply {
    private String rid;

    private String rname;

    private String rcontent;

    private Integer rreaded;

    private Integer rgooded;

    private String tid;

    private String uid;

    private Date tpublishdate;

    private Date tmodfitydate;

    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid == null ? null : rid.trim();
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname == null ? null : rname.trim();
    }

    public String getRcontent() {
        return rcontent;
    }

    public void setRcontent(String rcontent) {
        this.rcontent = rcontent == null ? null : rcontent.trim();
    }

    public Integer getRreaded() {
        return rreaded;
    }

    public void setRreaded(Integer rreaded) {
        this.rreaded = rreaded;
    }

    public Integer getRgooded() {
        return rgooded;
    }

    public void setRgooded(Integer rgooded) {
        this.rgooded = rgooded;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid == null ? null : tid.trim();
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    public Date getTpublishdate() {
        return tpublishdate;
    }

    public void setTpublishdate(Date tpublishdate) {
        this.tpublishdate = tpublishdate;
    }

    public Date getTmodfitydate() {
        return tmodfitydate;
    }

    public void setTmodfitydate(Date tmodfitydate) {
        this.tmodfitydate = tmodfitydate;
    }
}