package com.kh.team.jm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/jm")
public class Jm_ReviewController {

	//리뷰 게시판 리스트 
	@RequestMapping(value="/jm_reviewForm" ,method=RequestMethod.GET)
	public void jmReviewForm() throws Exception{
		
		
	}
	
	
	
	
}
