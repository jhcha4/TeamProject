package com.kh.team.kys.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.domain.Kys_BoardVo;
import com.kh.team.kys.service.KysBoardService;

@Controller
@RequestMapping("/manager")
public class KysBoardController {
	
	@Inject
	private KysBoardService boardService;
	//관리자 메인 화면
	@RequestMapping(value="/manager_main",method = RequestMethod.GET)
	public void manager_main() throws Exception {
		
	}
	
	//상품 리스트
	@RequestMapping(value="/normal_list",method = RequestMethod.GET)
	public String normal_list(Model model) throws Exception{
		List<Kys_BoardVo> list = boardService.boardList();
		model.addAttribute("list",list);
		return "manager/normal_list";
	}
	
	//상품 등록 폼
	@RequestMapping(value ="/shop_single_input", method = RequestMethod.GET)
	public void board_produce() throws Exception{
		
	}
	@RequestMapping(value="/shop_single_input", method = RequestMethod.POST)
	public String shop_single_input(Kys_BoardVo boardVo) throws Exception{
		boardService.boardInsert(boardVo);
		return "redirect:manager/manager_main";
	}
}
