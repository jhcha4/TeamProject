package com.kh.team.domain;

import java.sql.Timestamp;

public class JmContactVo {

	private int c_info;
	private String c_id;
	private String c_subject;
	private String c_contents;
	private Timestamp c_time;
	private int c_item;
	private int c_viewcnt;
	
	public JmContactVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getC_info() {
		return c_info;
	}

	public void setC_info(int c_info) {
		this.c_info = c_info;
	}

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	public String getC_subject() {
		return c_subject;
	}

	public void setC_subject(String c_subject) {
		this.c_subject = c_subject;
	}

	public String getC_contents() {
		return c_contents;
	}

	public void setC_contents(String c_contents) {
		this.c_contents = c_contents;
	}

	public Timestamp getC_time() {
		return c_time;
	}

	public void setC_time(Timestamp c_time) {
		this.c_time = c_time;
	}

	public int getC_item() {
		return c_item;
	}

	public void setC_item(int c_item) {
		this.c_item = c_item;
	}

	public int getC_viewcnt() {
		return c_viewcnt;
	}

	public void setC_viewcnt(int c_viewcnt) {
		this.c_viewcnt = c_viewcnt;
	}

	@Override
	public String toString() {
		return "jmContactVo [c_info=" + c_info + ", c_id=" + c_id + ", c_subject=" + c_subject + ", c_contents="
				+ c_contents + ", c_time=" + c_time + ", c_item=" + c_item + ", c_viewcnt=" + c_viewcnt + "]";
	}
	
	
	
	
	
	
}
