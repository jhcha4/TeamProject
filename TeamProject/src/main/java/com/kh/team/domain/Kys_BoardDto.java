package com.kh.team.domain;

public class Kys_BoardDto {
	private int page = 1;
	private int perPage = 10; //한 페이지당 보여질 글의 겟수
	private int startRow = 1;  //시작점
	private int endRow = 10;
	private int totalCount;
	private int totalPage;
	private int startPage;
	private int endPage;
	private final int PAGE_BLOCK = 5;
	
	public void setPageInfo() {
		this.endRow = page * perPage;
		this.startRow = this.endPage - this.perPage +1;
		
		//시작페이지
		//현재 페이지
		this.endPage = (int) (Math.ceil((double)page / PAGE_BLOCK) * PAGE_BLOCK);
		this.startPage = this.endPage - PAGE_BLOCK +1;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		this.totalPage = (int) Math.ceil((double)totalCount / perPage);
		
		//페이징 블럭에서 끝 페이지정리 
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		
	}
	
	public int getTotalpage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	@Override
	public String toString() {
		return "Kys_BoardDto [page=" + page + ", perPage=" + perPage + ", startRow=" + startRow + ", endRow=" + endRow
				+ ", totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + "]";
	}
	
	
	
}