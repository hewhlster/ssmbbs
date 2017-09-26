package org.fjh.entity;

import java.util.Date;

import org.apache.commons.codec.digest.DigestUtils;

public class User {
    private String uid;

    private String uname;

    private String upass;

    private String ugender;

    private Date ubirthday;

    private String uemail;

    private String uhead;

    private String umemo;

    private Integer urole=0;

    private Date uregtime;

    private Date ulastacctime;

    private Integer utype=0;
    
    
    public Integer getUtype() {
		return utype;
	}

	public void setUtype(Integer utype) {
		this.utype = utype;
	}

	public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass == null ? null : DigestUtils.md5Hex(upass.trim());
    }

    public String getUgender() {
        return ugender;
    }

    public void setUgender(String ugender) {
        this.ugender = ugender == null ? null : ugender.trim();
    }

    public Date getUbirthday() {
        return ubirthday;
    }

    public void setUbirthday(Date ubirthday) {
        this.ubirthday = ubirthday;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail == null ? null : uemail.trim();
    }

    public String getUhead() {
        return uhead;
    }

    public void setUhead(String uhead) {
        this.uhead = uhead == null ? null : uhead.trim();
    }

    public String getUmemo() {
        return umemo;
    }

    public void setUmemo(String umemo) {
        this.umemo = umemo == null ? null : umemo.trim();
    }

    public Integer getUrole() {
        return urole;
    }

    public void setUrole(Integer urole) {
        this.urole = urole;
    }

    public Date getUregtime() {
        return uregtime;
    }

    public void setUregtime(Date uregtime) {
        this.uregtime = uregtime;
    }

    public Date getUlastacctime() {
        return ulastacctime;
    }

    public void setUlastacctime(Date ulastacctime) {
        this.ulastacctime = ulastacctime;
    }
}