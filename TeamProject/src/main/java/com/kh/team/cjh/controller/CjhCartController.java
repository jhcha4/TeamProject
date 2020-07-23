package com.kh.team.cjh.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	@RequestMapping(value="/insertCart", method = RequestMethod.POST)
	public String insertCart(@RequestParam(value="p_num") int p_num,
							 @RequestParam(value="countArr[]") int[] countArr,
							 @RequestParam(value="sizeArr[]") String[] sizeArr,
							 HttpSession session) throws Exception {
		System.out.println("p_num : " + p_num);
		System.out.println("countArr : " + countArr);
		System.out.println("sizeArr : " + sizeArr);
		LshBoardVo boardVo = boardService.single(p_num);
		System.out.println("boardVo : " + boardVo);
		String u_id = (String)session.getAttribute("u_id");
		cartService.insertCart(u_id, boardVo, countArr, sizeArr);
		int count = cartService.getCountCart(u_id);
		session.setAttribute("count", count);
		return "/cjh/cart";
	}
	
	//	장바구니 목록보기
	@RequestMapping(value="/cart", method = RequestMethod.GET)
	public String cart(String u_id, Model model) throws Exception {
	//		System.out.println("u_id : " + u_id);
		List<CjhCartVo> list = cartService.getCart(u_id);
		
		for (CjhCartVo vo : list) {
			String title_name = vo.getTitle_name();
			String front = title_name.substring(0, title_name.lastIndexOf("/") + 1);
			String rear = title_name.substring(title_name.lastIndexOf("/") + 1);
			String smTitle = front + "sm_" + rear;
			vo.setTitle_name(smTitle);
		}
		
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
	public void getOrder(String u_id, int p_status, Model model) throws Exception {
//		System.out.println("u_id : " + u_id);
//		System.out.println("p_status : " + p_status);
		List<CjhCartVo> list = cartService.getOrder(u_id, p_status);
//		System.out.println("list : " + list);
		
		for (CjhCartVo vo : list) {
			String title_name = vo.getTitle_name();
			String front = title_name.substring(0, title_name.lastIndexOf("/") + 1);
			String rear = title_name.substring(title_name.lastIndexOf("/") + 1);
			String smTitle = front + "sm_" + rear;
			vo.setTitle_name(smTitle);
		}
		model.addAttribute("p_status", p_status); 
		model.addAttribute("list", list);
//		return "cjh/myOrder";
	}
}
