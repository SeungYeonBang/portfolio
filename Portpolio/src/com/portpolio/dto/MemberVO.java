package com.portpolio.dto;

public class MemberVO {
	private String userid;
	private String pwd;
	private String name;
	private String birth;
	private String gender;
	private String email;
	private String nationNum;
	private String phone;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNationNum() {
		return nationNum;
	}
	public void setNationNum(String nationNum) {
		this.nationNum = nationNum;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	@Override
	public String toString() {
		return "MemberVO [userid=" + userid + ", pwd=" + pwd + ", name=" + name + ", birth=" + birth + ", gender="
				+ gender + ", email=" + email + ", nationNum=" + nationNum + ", phone=" + phone + "]";
	}
	
	
}
