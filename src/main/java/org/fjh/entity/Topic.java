package org.fjh.entity;

import java.util.Date;

public class Topic {
    private String tid;

    private String tname;

    private String tcontent;

    private Integer treaded=0;

    private Integer tgooded=0;

    private String bid;

    private String uid;

    private Date tpublishdate;

    private Date tmodfitydate;

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid == null ? null : tid.trim();
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname == null ? null : tname.trim();
    }

    public String getTcontent() {
        return tcontent;
    }

    public void setTcontent(String tcontent) {
        this.tcontent = tcontent == null ? null : tcontent.trim();
    }

    public Integer getTreaded() {
        return treaded;
    }

    public void setTreaded(Integer treaded) {
        this.treaded = treaded;
    }

    public Integer getTgooded() {
        return tgooded;
    }

    public void setTgooded(Integer tgooded) {
        this.tgooded = tgooded;
    }

    public String getBid() {
        return bid;
    }

    public void setBid(String bid) {
        this.bid = bid == null ? null : bid.trim();
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

	@Override
	public String toString() {
		return "Topic [tid=" + tid + ", tname=" + tname + ", tcontent=" + tcontent + ", treaded=" + treaded
				+ ", tgooded=" + tgooded + ", bid=" + bid + ", uid=" + uid + ", tpublishdate=" + tpublishdate
				+ ", tmodfitydate=" + tmodfitydate + "]";
	}
}