package com.rs.fer.ex;

import java.sql.Date;
import java.sql.Time;

public class News {
	private int id;
	private Date newsdate;
	public Date getNewsdate() {
		return newsdate;
	}



	public void setNewsdate(Date newsdate) {
		this.newsdate = newsdate;
	}

	private String newsevents;
	private Date submitdate;
	private Time submittime;

	public Time getSubmittime() {
		return submittime;
	}



	public void setSubmittime(Time submittime) {
		this.submittime = submittime;
	}



	public Date getSubmitdate() {
		return submitdate;
	}



	public void setSubmitdate(Date submitdate) {
		this.submitdate = submitdate;
	}



	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNewsevents() {
		return newsevents;
	}

	public void setNewsevents(String newsevents) {
		this.newsevents = newsevents;
	}

	
}
