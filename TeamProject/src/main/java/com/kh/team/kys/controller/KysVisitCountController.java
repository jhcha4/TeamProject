package com.kh.team.kys.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.kh.team.domain.KysVisitCountVo;
import com.kh.team.kys.service.VisitCountService;

@RestController
@RequestMapping("/visit")
public class KysVisitCountController {
	@Inject
	private VisitCountService service;
	
	@RequestMapping(value = "/visitall",method = RequestMethod.GET)
	public void visitAll(HttpSession session) throws Exception{
		
		int totalcnt = service.visitAll();
//		int totalcnt = all.getTotalCnt();
		System.out.println(totalcnt);
		session.setAttribute("totalcnt", totalcnt);
		
	}
}
