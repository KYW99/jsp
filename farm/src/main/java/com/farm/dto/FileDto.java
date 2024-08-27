package com.farm.dto;

import java.util.List;


public class FileDto {
	
	private int fno;
	private int product_id;
	private String oName;
	private String sName;
	private String rdate;
	

	private List<FileDto> files;
	
	
	
	public List<FileDto> getFiles() {
		return files;
	}
	public void setFiles(List<FileDto> files) {
		this.files = files;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
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
		return "FileDto [fno=" + fno + ", product_id=" + product_id + ", oName=" + oName + ", sName=" + sName
				+ ", rdate=" + rdate + "]";
	}
	


}
