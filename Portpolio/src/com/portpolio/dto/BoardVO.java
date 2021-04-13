package com.portpolio.dto;

import java.sql.Timestamp;

public class BoardVO {
	private int num;
	private String pwd;
	private String name;
	private String email;
	private String title;
	private String content;
	private int readcount;
	private int parentnum;
	private int childnum;
	private Timestamp writedate;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public int getParentnum() {
		return parentnum;
	}
	public void setParentnum(int parentnum) {
		this.parentnum = parentnum;
	}
	public int getChildnum() {
		return childnum;
	}
	public void setChildnum(int childnum) {
		this.childnum = childnum;
	}
	public Timestamp getWritedate() {
		return writedate;
	}
	public void setWritedate(Timestamp writedate) {
		this.writedate = writedate;
	}
	@Override
	public String toString() {
		return "BoardVO [num=" + num + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", title=" + title
				+ ", content=" + content + ", readcount=" + readcount + ", parentnum=" + parentnum + ", childnum="
				+ childnum + ", writedate=" + writedate + "]";
	}
	
	
}
