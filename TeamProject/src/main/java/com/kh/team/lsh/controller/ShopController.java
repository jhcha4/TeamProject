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
	public String shop(LshBoardDto lshBoardDto, Model model) throws Exception {
		List<LshBoardVo> list = boardService.list(lshBoardDto);
		model.addAttribute("list", list);
		model.addAttribute("lshBoardDto", lshBoardDto);
		return "lsh/shop";
	}
	
	@RequestMapping(value="/shop_single", method = RequestMethod.GET)
	public void shop_single(int p_num, Model model) throws Exception {
		LshBoardVo LshBoardVo = boardService.single(p_num);
		model.addAttribute("LshBoardVo", LshBoardVo);
	}
	
	@RequestMapping(value="/shop_main", method = RequestMethod.GET)
	public String mainList(LshBoardDto lshBoardDto, Model model, String p_main) throws Exception {
		List<LshBoardVo> mainList = boardService.mainList(lshBoardDto, p_main);
		model.addAttribute("mainList", mainList);
		model.addAttribute("lshBoardDto", lshBoardDto);
		return "lsh/shop_main";
	}
	
	@RequestMapping(value="/shop_serve", method = RequestMethod.GET)
	public String serveList(LshBoardDto lshBoardDto, Model model, String p_serve) throws Exception {
		List<LshBoardVo> serveList = boardService.serveList(lshBoardDto, p_serve);
		model.addAttribute("serveList", serveList);
		model.addAttribute("lshBoardDto", lshBoardDto);
		return "lsh/shop_serve";
	}

	@RequestMapping(value="/cart")
	public String cart() throws Exception {
		return "cjh/cart";
	}
}
