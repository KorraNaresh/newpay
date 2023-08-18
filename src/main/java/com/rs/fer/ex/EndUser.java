package com.rs.fer.ex;

import java.sql.Blob;
import java.sql.Date;
import java.sql.Time;

public class EndUser {

	private int id;
	private Date submitdate;
	private Time submittime;

	public Date getSubmitdate() {
		return submitdate;
	}

	public void setSubmitdate(Date submitdate) {
		this.submitdate = submitdate;
	}

	public Time getSubmittime() {
		return submittime;
	}

	public void setSubmittime(Time submittime) {
		this.submittime = submittime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private String name;
	private String email;
	private String phone;
	private String fathername;
	private String dob;

	private int totalexperience;
	private int relevantexperience;

	private String keyskills;
	private String Strengths;
	private String presentdesignation;
	private String companyaddress;
	private String presentctc;
	private String expectedctc;
	private String noticeperiod;
	
	


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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFathername() {
		return fathername;
	}

	public void setFathername(String fathername) {
		this.fathername = fathername;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public int getTotalexperience() {
		return totalexperience;
	}

	public void setTotalexperience(int totalexperience) {
		this.totalexperience = totalexperience;
	}

	public int getRelevantexperience() {
		return relevantexperience;
	}

	public void setRelevantexperience(int relevantexperience) {
		this.relevantexperience = relevantexperience;
	}

	public String getKeyskills() {
		return keyskills;
	}

	public void setKeyskills(String keyskills) {
		this.keyskills = keyskills;
	}

	public String getStrengths() {
		return Strengths;
	}

	public void setStrengths(String strengths) {
		Strengths = strengths;
	}

	public String getPresentdesignation() {
		return presentdesignation;
	}

	public void setPresentdesignation(String presentdesignation) {
		this.presentdesignation = presentdesignation;
	}

	public String getCompanyaddress() {
		return companyaddress;
	}

	public void setCompanyaddress(String companyaddress) {
		this.companyaddress = companyaddress;
	}

	public String getPresentctc() {
		return presentctc;
	}

	public void setPresentctc(String presentctc) {
		this.presentctc = presentctc;
	}

	public String getExpectedctc() {
		return expectedctc;
	}

	public void setExpectedctc(String expectedctc) {
		this.expectedctc = expectedctc;
	}

	public String getNoticeperiod() {
		return noticeperiod;
	}

	public void setNoticeperiod(String noticeperiod) {
		this.noticeperiod = noticeperiod;
	}



}
