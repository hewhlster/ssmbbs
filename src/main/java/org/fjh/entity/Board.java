package org.fjh.entity;

public class Board {
    private String bid;

    private String bname;

    private String bparent;

    private String bimg;

    private String bmemo;

    public String getBid() {
        return bid;
    }

    public void setBid(String bid) {
        this.bid = bid == null ? null : bid.trim();
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname == null ? null : bname.trim();
    }

    public String getBparent() {
        return bparent;
    }

    public void setBparent(String bparent) {
        this.bparent = bparent == null ? null : bparent.trim();
    }

    public String getBimg() {
        return bimg;
    }

    public void setBimg(String bimg) {
        this.bimg = bimg == null ? null : bimg.trim();
    }

    public String getBmemo() {
        return bmemo;
    }

    public void setBmemo(String bmemo) {
        this.bmemo = bmemo == null ? null : bmemo.trim();
    }
}