package com.rs.fer.ex;

import java.sql.Date;
import java.sql.Time;


public class Jobopening {
	
	private int id;
	private String phoneNumber;
	private String email;


	private String jobtitle;
	private String keyskills;
	private String experience;
	private String jobDescription;

	private Date submitdate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public String getJobtitle() {
		return jobtitle;
	}

	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}

	public String getKeyskills() {
		return keyskills;
	}

	public void setKeyskills(String keyskills) {
		this.keyskills = keyskills;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}

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

	private Time submittime;

}
