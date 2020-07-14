package com.kh.team.cjh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/cjh")
public class CjhCartController {
	
	@RequestMapping(value="/cart", method = RequestMethod.GET)
	public String cart(String u_id) throws Exception {
		
		return "cjh/cart";
	}
}
