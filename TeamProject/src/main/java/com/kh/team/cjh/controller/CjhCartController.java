package com.kh.team.cjh.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.cjh.service.CjhCartService;
import com.kh.team.domain.CjhCartVo;

@Controller
@RequestMapping("/cjh")
public class CjhCartController {
	
	@Inject
	private CjhCartService cartService;
	
//	장바구니 목록보기
	@RequestMapping(value="/cart", method = RequestMethod.GET)
	public String cart(String u_id, Model model) throws Exception {
//		System.out.println("u_id : " + u_id);
		List<CjhCartVo> list = cartService.getCart(u_id);
		model.addAttribute("list", list);
		return "/cjh/cart";
	}
	
	//	장바구니 삭제
	@RequestMapping(value="/deleteCart", method = RequestMethod.GET)
	public String deleteCart(String u_id, int p_num) throws Exception {
		cartService.deleteCart(u_id, p_num);
		return "redirect:/cjh/cart?u_id=" + u_id;
	}
}