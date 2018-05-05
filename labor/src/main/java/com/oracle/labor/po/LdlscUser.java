package com.oracle.labor.po;

public class LdlscUser {
    private String userId;

    private String userName;

    private String userloginname;

    private String userpassword;

    private String userindex;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserloginname() {
        return userloginname;
    }

    public void setUserloginname(String userloginname) {
        this.userloginname = userloginname == null ? null : userloginname.trim();
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword == null ? null : userpassword.trim();
    }

    public String getUserindex() {
        return userindex;
    }

    public void setUserindex(String userindex) {
        this.userindex = userindex == null ? null : userindex.trim();
    }
}