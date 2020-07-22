package com.kh.team.cjh.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.cjh.service.CjhCartService;
import com.kh.team.cjh.service.CjhPointService;
import com.kh.team.cjh.service.CjhUserService;
import com.kh.team.domain.CjhCartVo;
import com.kh.team.domain.LshBoardVo;
import com.kh.team.lsh.service.LSH_BoardService;

@Controller
@RequestMapping("/cjh")
public class CjhCartController {
	
	@Inject
	private CjhCartService cartService;
	@Inject
	private CjhUserService userService;
	@Inject
	private CjhPointService pointService;
	@Inject
	private LSH_BoardService boardService;
	
	//	장바구니에 추가
	@Transactional
	@RequestMapping(value="/insertCart", method = RequestMethod.GET)
	public String insertCart(String u_id, int p_num, int p_count, HttpSession session) throws Exception {
//		System.out.println("u_id : " + u_id);
//		System.out.println("p_num : " + p_num);
		LshBoardVo boardVo = boardService.single(p_num);
		System.out.println("boardVo : " + boardVo);
		cartService.insertCart(u_id, p_count, boardVo);
		int count = cartService.getCountCart(u_id);
		session.setAttribute("count", count);
		return "redirect:/cjh/cart?u_id=" + u_id; 
	}
	
	//	장바구니 목록보기
	@RequestMapping(value="/cart", method = RequestMethod.GET)
	public String cart(String u_id, Model model) throws Exception {
	//		System.out.println("u_id : " + u_id);
		List<CjhCartVo> list = cartService.getCart(u_id);
		model.addAttribute("list", list);
		return "/cjh/cart";
	}
	
	//	장바구니 삭제
	@Transactional
	@RequestMapping(value="/deleteCart", method = RequestMethod.GET)
	public String deleteCart(String u_id, int c_num, HttpSession session) throws Exception {
		cartService.deleteCart(u_id, c_num);
		int count = cartService.getCountCart(u_id);
		session.setAttribute("count", count);
		return "redirect:/cjh/cart?u_id=" + u_id;
	}
	
	//	선택한 장바구니 삭제
	@Transactional
	@RequestMapping(value="deleteCheckedCart", method = RequestMethod.GET)
	public String deleteCheckedCart(String u_id, String c_num, HttpSession session) throws Exception {
		cartService.deleteCheckedCart(u_id, c_num);
		int count = cartService.getCountCart(u_id);
		session.setAttribute("count", count);
		return "redirect:/cjh/cart?u_id=" + u_id;
	}
	
	//	장바구니 수정
	@RequestMapping(value="updateCart", method = RequestMethod.GET)
	public String updateCart(String u_id, int p_count, int c_num) throws Exception {
		cartService.updateCart(u_id, p_count, c_num);
		return "redirect:/cjh/cart?u_id="+u_id;
	}
	
	//	결제 폼
	@Transactional
	@RequestMapping(value="/checkout", method = RequestMethod.GET)
	public String checkout(String u_id, Model model) throws Exception {
//		System.out.println("u_id : " + u_id);
		List<CjhCartVo> list = cartService.getCart(u_id);
		int userPoint = pointService.getUserPoint(u_id);
		model.addAttribute("userPoint", userPoint);
		model.addAttribute("list", list);
		return "cjh/checkout";
	}
	
	//	결제 처리
	@Transactional
	@RequestMapping(value="/order", method = RequestMethod.GET)
	public String order(String u_id, int totalPrice, HttpSession session) throws Exception {
		pointService.minusPoint(u_id, totalPrice);
		pointService.plusPoint(u_id, totalPrice);
		pointService.usePoint(u_id, totalPrice);
		pointService.getPoint(u_id, totalPrice);
		
		cartService.orderCartUpdate(u_id);
		int count = cartService.getCountCart(u_id);
		session.setAttribute("count", count);
		return "/cjh/thankyou";
	}
	
	//	주문목록 불러오기
	@RequestMapping(value="/myOrder", method = RequestMethod.GET)
	public String getOrder(String u_id, Model model) throws Exception {
//		System.out.println("u_id : " + u_id);
		List<CjhCartVo> list = cartService.getOrder(u_id);
//		System.out.println("list : " + list);
		model.addAttribute("list", list);
		return "cjh/myOrder";
	}
}
