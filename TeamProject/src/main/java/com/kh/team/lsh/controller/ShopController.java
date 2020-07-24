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
	
	// 상품 메인 화면
	@RequestMapping(value="/shop", method = RequestMethod.GET)
	public String shop(LshBoardDto lshBoardDto, Model model, String p_main, String p_serve) throws Exception {
		lshBoardDto.setPageInfo();
		int totalCount = boardService.getCount(lshBoardDto, p_main, p_serve);
		lshBoardDto.setTotalCount(totalCount);
		List<LshBoardVo> list = boardService.list(lshBoardDto, p_main, p_serve);
		for (LshBoardVo vo : list) {
			String title_name = vo.getTitle_name();
			String front = title_name.substring(0, title_name.lastIndexOf("/") + 1);
			String rear = title_name.substring(title_name.lastIndexOf("/") + 1);
			String smTitle = front + "sm_" + rear;
			vo.setTitle_name(smTitle);
		}
		model.addAttribute("list", list);
		model.addAttribute("lshBoardDto", lshBoardDto);
		model.addAttribute("p_main", p_main);
		model.addAttribute("p_serve", p_serve);
		return "lsh/shop";
	}
	
	// 상품클릭 화면
	@RequestMapping(value="/shop_single", method = RequestMethod.GET)
	public void shop_single(String p_serve, int p_num, Model model) throws Exception {
		LshBoardVo lshBoardVo = boardService.single(p_num);
		List<LshBoardVo> MostList = boardService.MostList(p_serve, p_num);
		List<LshBoardVo> imgList = boardService.getImg(p_num);
		
		for (LshBoardVo vo : MostList) {
			String title_name = vo.getTitle_name();
			String front = title_name.substring(0, title_name.lastIndexOf("/") + 1);
			String rear = title_name.substring(title_name.lastIndexOf("/") + 1);
			String smTitle = front + "sm_" + rear;
			vo.setTitle_name(smTitle);
		}
		
		model.addAttribute("MostList",MostList);
		model.addAttribute("lshBoardVo", lshBoardVo);
		model.addAttribute("imgList", imgList);
	}
	
}
