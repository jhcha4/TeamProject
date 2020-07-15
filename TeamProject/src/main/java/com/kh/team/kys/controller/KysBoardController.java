package com.kh.team.kys.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.domain.Kys_BoardDto;
import com.kh.team.domain.Kys_BoardVo;
import com.kh.team.domain.Kys_MainVo;
import com.kh.team.domain.Kys_ServeVo;
import com.kh.team.kys.service.KysBoardService;
import com.kh.team.kys.service.KysServeService;

@Controller
@RequestMapping("/manager")
public class KysBoardController {
	
	@Inject
	private KysBoardService boardService;
	
	@Inject
	private KysServeService serveService;
	
	//관리자 메인 화면
	@RequestMapping(value="/manager_main",method = RequestMethod.GET)
	public String manager_main(Model model) throws Exception {
		 List<Kys_MainVo> mainList = serveService.mainList();
			List<Kys_ServeVo> serveList = serveService.serveList();
			 model.addAttribute("mainList",mainList);
			 model.addAttribute("serveList",serveList);
		return "manager/manager_main";
	}
	
	//상품 리스트  + 게시물 페이징
	@RequestMapping(value="/normal_list",method = RequestMethod.GET)
	public void normal_list(Kys_BoardDto boardDto, Model model) throws Exception{
		List<Kys_BoardVo> list = boardService.boardList();
		int totalCount = boardService.getCount(boardDto);
		List<Kys_BoardVo> pageList = boardService.pageList(boardDto);
		System.out.println(pageList);
		boardDto.setTotalCount(totalCount);
		
		model.addAttribute("list",list);
		model.addAttribute("pageList",pageList);
		model.addAttribute("boardDto",boardDto);
		
		
	}
	
	//상품 등록 폼
	@RequestMapping(value ="/shop_single_input", method = RequestMethod.GET)
	public void board_produce() throws Exception{
		
	}
	//등록 처리 
	@RequestMapping(value="/shop_single_input", method = RequestMethod.POST)
	public String shop_single_input(Kys_BoardVo boardVo) throws Exception{
		System.out.println("shop : "+boardVo);
		boardService.boardInsert(boardVo);
		
		return "redirect:/manager/manager_main";
	}
	//상품 1개 검색
	@RequestMapping(value="oenSelect", method = RequestMethod.GET)
	public void oenSelect(Model model, int p_num) throws Exception {
		Kys_BoardVo boardVo = boardService.boardSelectBy(p_num);
		model.addAttribute("boardVo",boardVo);
		
	}
	//상품 수정 처리
	@RequestMapping(value="/productUpdate",method = RequestMethod.POST)
	public String productUpdate(Kys_BoardVo boardVo) throws Exception{
		boardService.boardUpdate(boardVo);
		return "redirect:/manager/normal_list";
	}
	//게시물 페이징
	
}
