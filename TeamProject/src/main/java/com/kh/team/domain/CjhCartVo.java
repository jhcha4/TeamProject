package com.kh.team.domain;

public class CjhCartVo {

	private String u_id;
	private int p_num;
	private String p_name;
	private int p_price;
	private String p_content;
	private int p_count;
	private String p_image;
	
	public CjhCartVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CjhCartVo(String u_id, int p_num, String p_name, int p_price, String p_content, int p_count,
			String p_image) {
		super();
		this.u_id = u_id;
		this.p_num = p_num;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_content = p_content;
		this.p_count = p_count;
		this.p_image = p_image;
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

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String getP_content() {
		return p_content;
	}

	public void setP_content(String p_content) {
		this.p_content = p_content;
	}

	public int getP_count() {
		return p_count;
	}

	public void setP_count(int p_count) {
		this.p_count = p_count;
	}

	public String getP_image() {
		return p_image;
	}

	public void setP_image(String p_image) {
		this.p_image = p_image;
	}

	@Override
	public String toString() {
		return "CjhCartVo [u_id=" + u_id + ", p_num=" + p_num + ", p_name=" + p_name + ", p_price=" + p_price
				+ ", p_content=" + p_content + ", p_count=" + p_count + ", p_image=" + p_image + "]";
	}
	
	
}
