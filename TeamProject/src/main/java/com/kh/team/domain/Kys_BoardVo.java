package com.kh.team.domain;

public class Kys_BoardVo {
	private int p_num;
	private String p_name;
	private String p_content;
	private int p_price;
	private String p_main;
	private String p_serve;
	
	public Kys_BoardVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Kys_BoardVo(int p_num, String p_name, String p_content, int p_price, String p_main, String p_serve) {
		super();
		this.p_num = p_num;
		this.p_name = p_name;
		this.p_content = p_content;
		this.p_price = p_price;
		this.p_main = p_main;
		this.p_serve = p_serve;
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

	public String getP_content() {
		return p_content;
	}

	public void setP_content(String p_content) {
		this.p_content = p_content;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String getP_main() {
		return p_main;
	}

	public void setP_main(String p_main) {
		this.p_main = p_main;
	}

	public String getP_serve() {
		return p_serve;
	}

	public void setP_serve(String p_serve) {
		this.p_serve = p_serve;
	}

	@Override
	public String toString() {
		return "BoardVo [p_num=" + p_num + ", p_name=" + p_name + ", p_content=" + p_content + ", p_price=" + p_price
				+ ", p_main=" + p_main + ", p_serve=" + p_serve + "]";
	}
	
	
}
