package com.farm.dto;

import java.util.List;

public class ArticleDto {
	
	private int no;
	private String cate;
	private String title;
	private String content;
	private int comment;
	private int file;
	private int hit;
	private String writer;
	private String regip;
	private String rdate;
	
	
	// Join 해서 결과가 나옴으로써 추가된 nickname
	private String nick;
	private List<FileDto> files;
	
	
	public List<FileDto> getFiles() {
		return files;
	}
	public void setFiles(List<FileDto> files) {
		this.files = files;
	}
	
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	public void setNo(String no) {
		this.no = Integer.parseInt(no);
	}
	
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getComment() {
		return comment;
	}
	public void setComment(int comment) {
		this.comment = comment;
	}
	public int getFile() {
		return file;
	}
	public void setFile(int file) {
		this.file = file;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRegip() {
		return regip;
	}
	public void setRegip(String regip) {
		this.regip = regip;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String Rdate) {
		this.rdate = Rdate;
	}
	public void setRdateSubString(String Rdate) {
		this.rdate = Rdate.substring(0,10);
	}
	@Override
	public String toString() {
		return "ArticleDto [no=" + no + ", cate=" + cate + ", title=" + title + ", content=" + content + ", comment="
				+ comment + ", file=" + file + ", hit=" + hit + ", writer=" + writer + ", regip=" + regip + ", Rdate="
				+ rdate + ", getNo()=" + getNo() + ", getCate()=" + getCate() + ", getTitle()=" + getTitle()
				+ ", getContent()=" + getContent() + ", getComment()=" + getComment() + ", getFile()=" + getFile()
				+ ", getHit()=" + getHit() + ", getWriter()=" + getWriter() + ", getRegip()=" + getRegip()
				+ ", getRdate()=" + getRdate() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	

}
