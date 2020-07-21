package com.kh.team.domain;

public class LshImgVo {
	private String file_name;
	private int p_num;
	private int p_imgnum;

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
	}

	public int getP_imgnum() {
		return p_imgnum;
	}

	public void setP_imgnum(int p_imgnum) {
		this.p_imgnum = p_imgnum;
	}

	@Override
	public String toString() {
		return "LshImgVo [file_name=" + file_name + ", p_num=" + p_num + ", p_imgnum=" + p_imgnum + "]";
	}

}
