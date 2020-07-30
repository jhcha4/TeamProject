package com.kh.team.domain;

public class LshSizeVo {
	private int p_count;
	private String p_size;

	public int getP_count() {
		return p_count;
	}

	public void setP_count(int p_count) {
		this.p_count = p_count;
	}

	public String getP_size() {
		return p_size;
	}

	public void setP_size(String p_size) {
		this.p_size = p_size;
	}

	@Override
	public String toString() {
		return "LshSizeVo [p_count=" + p_count + ", p_size=" + p_size + "]";
	}

}
