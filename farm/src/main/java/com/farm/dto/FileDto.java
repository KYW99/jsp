package com.farm.dto;

public class FileDto {
	
	private int id;
	private int prodid;
	private int fno;
	private String oName;
	private String sName;
	private String rdate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public int getProdid() {
		return prodid;
	}
	public void setProdid(int prodid) {
		this.prodid = prodid;
	}
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public String getoName() {
		return oName;
	}
	public void setoName(String oName) {
		this.oName = oName;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	@Override
	public String toString() {
		return "FileDto [id=" + id + ", prodid=" + prodid + ", fno=" + fno + ", oName=" + oName + ", sName=" + sName
				+ ", rdate=" + rdate + "]";
	}
	

	
	

	
	
	

}
