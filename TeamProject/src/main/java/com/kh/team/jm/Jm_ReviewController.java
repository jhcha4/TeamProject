package com.kh.team.jm;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.domain.JmReviewVo;

@Controller
@RequestMapping("/jm")
public class Jm_ReviewController {

	
	@Inject
	private JmReviewService jmReviewService;
	
	
	//리뷰 게시판 리스트 
	@RequestMapping(value="/jm_reviewForm" ,method=RequestMethod.GET)
	public String jmReviewForm(Model model) throws Exception{
		List<JmReviewVo> list = jmReviewService.selectReviewList();
		model.addAttribute("list",list);
		return "jm/jm_reviewForm";
		
	}
	
	//리뷰 게시판 info 조회
	@RequestMapping(value="/jm_reviewInfo/{r_info}", method=RequestMethod.GET)
		public String jmReviewInfo(@PathVariable("r_info")  int r_info , Model model)throws Exception{
			JmReviewVo jmReviewVo = jmReviewService.selectReviewInfo(r_info);
			model.addAttribute("jmReviewVo",jmReviewVo);
			return "/jm/jm_reviewInfo";
	}
	
	//리뷰 게시판 글쓰기
	@RequestMapping(value="/jm_insertReviewForm" ,method=RequestMethod.GET)
	public void insertInfoForm()throws Exception{
		
	}
	
	
	
	
	
}
