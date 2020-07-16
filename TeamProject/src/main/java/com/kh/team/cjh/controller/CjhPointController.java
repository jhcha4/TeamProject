package com.kh.team.cjh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/cjh")
public class CjhPointController {
	
	@RequestMapping(value = "order", method = RequestMethod.GET)
	public void usePoint(String u_id) throws Exception {
		
	}
}
