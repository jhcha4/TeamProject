package com.kh.team.domain;

import java.sql.Timestamp;

public class JmReviewVo {

	private int r_info;
	private String r_id;
	private String r_subject;
	private String r_contents;
	private Timestamp r_time;
	private String r_star;
	private int r_item;
	
	
	public JmReviewVo() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getR_info() {
		return r_info;
	}


	public void setR_info(int r_info) {
		this.r_info = r_info;
	}


	public String getR_id() {
		return r_id;
	}


	public void setR_id(String r_id) {
		this.r_id = r_id;
	}


	public String getR_subject() {
		return r_subject;
	}


	public void setR_subject(String r_subject) {
		this.r_subject = r_subject;
	}


	public String getR_contents() {
		return r_contents;
	}


	public void setR_contents(String r_contents) {
		this.r_contents = r_contents;
	}


	public Timestamp getR_time() {
		return r_time;
	}


	public void setR_time(Timestamp r_time) {
		this.r_time = r_time;
	}


	public String getR_star() {
		return r_star;
	}


	public void setR_star(String r_star) {
		this.r_star = r_star;
	}


	public int getR_item() {
		return r_item;
	}


	public void setR_item(int r_item) {
		this.r_item = r_item;
	}


	@Override
	public String toString() {
		return "JmReviewVo [r_info=" + r_info + ", r_id=" + r_id + ", r_subject=" + r_subject + ", r_contents="
				+ r_contents + ", r_time=" + r_time + ", r_star=" + r_star + ", r_item=" + r_item + "]";
	}
	
	
	
	
}
