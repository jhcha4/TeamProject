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
	
	@RequestMapping(value="/shop_single")
	public String shop_single() throws Exception {
		return "lsh/shop_single";
	}

	@RequestMapping(value="/shop_Top", method = RequestMethod.GET)
	public String top(Model model) throws Exception {
		List<LshBoardVo> topList = boardService.topList();
		model.addAttribute("topList", topList);
		return "lsh/shop_Top";
	}
	
	@RequestMapping(value="/shop_Pants", method = RequestMethod.GET)
	public String pants(Model model) throws Exception {
		List<LshBoardVo> pantsList = boardService.pantsList();
		model.addAttribute("pantsList", pantsList);
		return "lsh/shop_Pants";
	}
	
	@RequestMapping(value="/shop_Shoes", method = RequestMethod.GET)
	public String shoes(Model model) throws Exception {
		List<LshBoardVo> shoesList = boardService.shoesList();
		model.addAttribute("shoesList", shoesList);
		return "lsh/shop_Shoes";
	}
	
	@RequestMapping(value="/shop_Acc", method = RequestMethod.GET)
	public String acc(Model model) throws Exception {
		List<LshBoardVo> accList = boardService.accList();
		model.addAttribute("accList", accList);
		return "lsh/shop_Acc";
	}
	
	
	@RequestMapping(value="/shop_Top_serve", method = RequestMethod.GET)
	public String shop_Top_serve(String serve, Model model) throws Exception {
		List<LshBoardVo> topServeList = boardService.topServeList(serve);
		model.addAttribute("topServeList", topServeList);
		return "lsh/shop_Top_serve";
	}
	
	@RequestMapping(value="/cart")
	public String cart() throws Exception {
		return "cjh/cart";
	}
}
