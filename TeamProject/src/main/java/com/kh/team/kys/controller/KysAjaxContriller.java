package com.kh.team.kys.controller;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.kh.team.kys.service.KysBoardService;

@RestController
@RequestMapping("/ajax")
public class KysAjaxContriller {
	
	@Inject
	private KysBoardService boardService;
	
		//삭제 처리
		@RequestMapping(value="/productDelete", method = RequestMethod.POST)
		public String postDelete(int p_num) throws Exception{
			boardService.boardDelete(p_num);
			return "success";
		}
		@RequestMapping(value = "/restoration", method = RequestMethod.POST)
		public String restoration(int p_num) throws Exception{
			boardService.boardRestoration(p_num);
			return "success";
		}
		@RequestMapping(value="delete",method = RequestMethod.POST)
		public String delete(int p_num) throws Exception{
			boardService.delete(p_num);
			return "success";
		}
}
