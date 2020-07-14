package com.kh.team.cjh.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.cjh.service.CjhUserService;
import com.kh.team.cjh.util.MyUrlUtil;
import com.kh.team.domain.CjhPointVo;
import com.kh.team.domain.CjhUserVo;

@Controller
@RequestMapping("/cjh")
public class CjhMyInfoController { 
	
	@Inject
	private CjhUserService userService;
	
	@RequestMapping(value="/home")
	public String home() throws Exception {
		return "redirect:/home";
	}
	
	@RequestMapping(value="/index")
	public String index() throws Exception {
		return "cjh/index";
	}
	
	@RequestMapping(value="/about")
	public String about() throws Exception {
		return "cjh/about";
	}
	
	@RequestMapping(value="/checkout")
	public String checkout() throws Exception {
		return "cjh/checkout";
	}
	
	@RequestMapping(value="/contact")
	public String contact() throws Exception {
		return "cjh/contact";
	}
	
	@RequestMapping(value="/shop_single")
	public String shop_single() throws Exception {
		return "cjh/shop_single";
	}
	
	@RequestMapping(value="/shop")
	public String shop() throws Exception {
		return "cjh/shop";
	}
	
	@RequestMapping(value="/thankyou")
	public String thankyou() throws Exception {
		return "cjh/thankyou";
	}
	

	
	@RequestMapping(value="/order")
	public String order() throws Exception {
		return "cjh/order";
	}
	
	//	로그인 폼
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public void loginget() throws Exception {
//		System.out.println("dd");
	}
	
//	로그인 처리 폼
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(String u_id, String u_pw,
							HttpSession session, RedirectAttributes rttr) throws Exception {
//		System.out.println("u_id : " + u_id);
//		System.out.println("u_pw : " + u_pw);
		boolean result = userService.login(u_id, u_pw);
		if (result == true) {
			//	해당 사용자가 있다면 아이디를 세션에 저장
			session.setAttribute("u_id", u_id);
			String targetLocation = (String)session.getAttribute("targetLocation");
			if (targetLocation != null && !targetLocation.equals("")) {
				session.removeAttribute("targetLocation");
				return "redirect:" + targetLocation;
			}
			return "redirect:/cjh/index";
		}
		rttr.addFlashAttribute("msg", "fail");
		return "redirect:/cjh/login";
	}
	
	//	회원정보 수정 폼
	@RequestMapping(value="/modifyMyInfo", method = RequestMethod.GET)
	public void modifyMyInfoGet(String u_id, Model model) throws Exception {
//		System.out.println("u_id : " + u_id);
		CjhUserVo userVo = userService.selectUser(u_id);
//		System.out.println("userVo : " + userVo);
		model.addAttribute("userVo", userVo);
	}
	
	//	회원정보 수정처리
	@RequestMapping(value="/modifyMyInfo", method = RequestMethod.POST)
	public String modifyMyInfoPost(CjhUserVo userVo) throws Exception {
//		System.out.println("userVo : " + userVo);
		String url = MyUrlUtil.makeUrl("/cjh/modifyMyInfo", userVo.getU_id());
		userService.updateUser(userVo);
		return "redirect:" + url; 
	}
	
	//	로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		session.invalidate();		//	세션 무효화 -> 로그아웃
		return "redirect:/cjh/index";
	}
	
	//	마이페이지
	@RequestMapping(value="/mypage", method = RequestMethod.GET)
	public void mypage(String u_id, Model model) throws Exception {
		CjhPointVo pointVo = userService.getPoint(u_id);
		System.out.println("pointVo : " + pointVo);
		model.addAttribute("pointVo", pointVo);
	}
}