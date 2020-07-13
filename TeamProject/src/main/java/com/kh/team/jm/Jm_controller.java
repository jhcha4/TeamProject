package com.kh.team.jm;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/jm")
public class Jm_controller {
	
	
	@Inject
	private JmMemberService jmMemberService;
	
	
	//로그인 폼
	@RequestMapping(value="/jm_login" ,method=RequestMethod.GET)
	public void jmLogin() throws Exception{
		
	}
	//회원가입 폼
	@RequestMapping(value="/jm_signUp",method=RequestMethod.GET)
	public void jmSignUp() throws Exception{
		
	}
	
	//회원가입 처리
	@RequestMapping(value="/jm_signUpRun",method=RequestMethod.POST)
	public String jmMemberSignUpRun(JmMemberVo vo) throws Exception{
		jmMemberService.insertMember(vo);
		return "redirect:/jm/jm_login";
	}
	
	
}
