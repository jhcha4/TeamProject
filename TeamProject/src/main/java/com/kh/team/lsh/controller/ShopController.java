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

	@RequestMapping(value="/shop_Top")
	public String top() throws Exception {
		return "lsh/shop_Top";
	}
	
	@RequestMapping(value="/shop_Pants")
	public String pants() throws Exception {
		return "lsh/shop_Pants";
	}
	
	@RequestMapping(value="/shop_Shoes")
	public String shoes() throws Exception {
		return "lsh/shop_Shoes";
	}
	
	@RequestMapping(value="/shop_Acc")
	public String acc() throws Exception {
		return "lsh/shop_Acc";
	}
	
	@RequestMapping(value="/cart")
	public String cart() throws Exception {
		return "cjh/cart";
	}
}
