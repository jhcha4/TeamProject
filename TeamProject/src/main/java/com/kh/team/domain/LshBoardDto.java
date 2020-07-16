package com.kh.team.domain;

public class LshBoardDto {
	private String priceType;

	public String getPriceType() {
		return priceType;
	}

	public void setPriceType(String priceType) {
		this.priceType = priceType;
	}

	@Override
	public String toString() {
		return "LshBoardDto [priceType=" + priceType + "]";
	}
	
}
