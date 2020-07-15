package com.kh.team.lsh.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.domain.LshBoardVo;
import com.kh.team.lsh.service.LSH_BoardService;

@Controller
@RequestMapping("/lsh")
public class ShopController {
	
	@Inject
	private LSH_BoardService boardService;
	
	@RequestMapping(value="/shop", method = RequestMethod.GET)
	public String shop(Model model) throws Exception {
		List<LshBoardVo> list = boardService.list();
		model.addAttribute("list", list);
		return "lsh/shop";
	}
	
	@RequestMapping(value="/shop_single", method = RequestMethod.GET)
	public void shop_single(int p_num, Model model) throws Exception {
		LshBoardVo LshBoardVo = boardService.single(p_num);
		model.addAttribute("LshBoardVo", LshBoardVo);
	}
	
	@RequestMapping(value="/shop_main", method = RequestMethod.GET)
	public String mainList(Model model, String p_main) throws Exception {
		List<LshBoardVo> mainList = boardService.mainList(p_main);
		model.addAttribute("mainList", mainList);
		return "lsh/shop_main";
	}
	
	@RequestMapping(value="/shop_serve", method = RequestMethod.GET)
	public String serveList(Model model, String p_serve) throws Exception {
		List<LshBoardVo> serveList = boardService.serveList(p_serve);
		model.addAttribute("serveList", serveList);
		return "lsh/shop_serve";
	}

	@RequestMapping(value="/cart")
	public String cart() throws Exception {
		return "cjh/cart";
	}
}
