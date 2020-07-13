package com.kh.team.domain;

public class CjhCartVo {
	private String u_id;
	private int p_num;
	
	public CjhCartVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CjhCartVo(String u_id, int p_num) {
		super();
		this.u_id = u_id;
		this.p_num = p_num;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
	}

	@Override
	public String toString() {
		return "CjhCartVo [u_id=" + u_id + ", p_num=" + p_num + "]";
	}
	
	
}
