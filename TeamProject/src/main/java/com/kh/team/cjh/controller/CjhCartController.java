package com.kh.team.cjh.controller;

import java.util.List;

import javax.inject.Inject;

import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	//	장바구니 수정
	@RequestMapping(value="updateCart", method = RequestMethod.GET)
	public String updateCart(String u_id, int p_num, int p_count) throws Exception {
		cartService.updateCart(u_id, p_num, p_count);
		return "redirect:/cjh/cart?u_id="+u_id;
	}
	
	//	결제 폼
	@RequestMapping(value="/checkout", method = RequestMethod.GET)
	public String checkout() throws Exception {
		return "cjh/checkout";
	}
}
