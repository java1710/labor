package com.oracle.labor.po;

public class Account {
    private Integer accountid;

    private String name;

    private Integer remain;

    public Integer getAccountid() {
        return accountid;
    }

    public void setAccountid(Integer accountid) {
        this.accountid = accountid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    @Override
	public String toString() {
		return "Account [accountid=" + accountid + ", name=" + name + ", remain=" + remain + "]";
	}

	public Integer getRemain() {
        return remain;
    }

    public void setRemain(Integer remain) {
        this.remain = remain;
    }
}