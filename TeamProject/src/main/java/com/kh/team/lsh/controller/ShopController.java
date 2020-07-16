package com.kh.team.lsh.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.domain.LshBoardDto;
import com.kh.team.domain.LshBoardVo;
import com.kh.team.lsh.service.LSH_BoardService;

@Controller
@RequestMapping("/lsh")
public class ShopController {
	
	@Inject
	private LSH_BoardService boardService;
	
	@RequestMapping(value="/shop", method = RequestMethod.GET)
	public String shop(LshBoardDto LshBoardDto, Model model, String p_main, String p_serve) throws Exception {
		List<LshBoardVo> list = boardService.list(LshBoardDto, p_main, p_serve);
		model.addAttribute("list", list);
		model.addAttribute("LshBoardDto", LshBoardDto);
		model.addAttribute("p_main", p_main);
		model.addAttribute("p_serve", p_serve);
		return "lsh/shop";
	}
	
//	 
// 
	
	@RequestMapping(value="/shop_single", method = RequestMethod.GET)
	public void shop_single(int p_num, Model model) throws Exception {
		LshBoardVo LshBoardVo = boardService.single(p_num);
		model.addAttribute("LshBoardVo", LshBoardVo);
	}
	
	@RequestMapping(value="/cart")
	public String cart() throws Exception {
		return "cjh/cart";
	}
}
