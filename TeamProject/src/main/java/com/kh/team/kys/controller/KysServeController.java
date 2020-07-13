package com.kh.team.kys.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.domain.Kys_ServeVo;
import com.kh.team.kys.service.KysServeService;

@Controller
@RequestMapping("/serve")
public class KysServeController {
	
	@Inject
	private KysServeService serveService;
	
	@RequestMapping(value = "/serveList",method = RequestMethod.GET)
	public List<Kys_ServeVo> serveList() throws Exception{
		List<Kys_ServeVo> list = serveService.serveList();
		return list;
	}
}
