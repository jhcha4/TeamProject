package com.kh.team.domain;

import java.sql.Date;

public class KysVisitCountVo {
	private int visit_id;
	private String visit_ip;
	private String visit_time;
	
	private int totalCnt;
	private int todayCon;
	public KysVisitCountVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public KysVisitCountVo(int visit_id, String visit_ip, String visit_time, int totalCnt, int todayCon) {
		super();
		this.visit_id = visit_id;
		this.visit_ip = visit_ip;
		this.visit_time = visit_time;
		this.totalCnt = totalCnt;
		this.todayCon = todayCon;
	}
	public int getVisit_id() {
		return visit_id;
	}
	public void setVisit_id(int visit_id) {
		this.visit_id = visit_id;
	}
	public String getVisit_ip() {
		return visit_ip;
	}
	public void setVisit_ip(String visit_ip) {
		this.visit_ip = visit_ip;
	}
	public String getVisit_time() {
		return visit_time;
	}
	public void setVisit_time(String visit_time) {
		this.visit_time = visit_time;
	}
	public int getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
	public int getTodayCon() {
		return todayCon;
	}
	public void setTodayCon(int todayCon) {
		this.todayCon = todayCon;
	}
	@Override
	public String toString() {
		return "KysVisitCountVo [visit_id=" + visit_id + ", visit_ip=" + visit_ip + ", visit_time=" + visit_time
				+ ", totalCnt=" + totalCnt + ", todayCon=" + todayCon + "]";
	}
	
	
}
