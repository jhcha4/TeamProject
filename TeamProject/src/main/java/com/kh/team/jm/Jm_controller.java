package com.kh.team.jm;

import java.util.List;

import javax.inject.Inject;
import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.team.domain.JmMemberVo;

@Controller
@RequestMapping("/jm")
public class Jm_controller { 
	
	
	@Inject
	private JmMemberService jmMemberService;
	
	
	//로그인 폼
	@RequestMapping(value="/jm_login" ,method=RequestMethod.GET)
	public void jmLogin() throws Exception{
		
	}
		
	//로그인 처리
	@RequestMapping(value="/jm_login", method=RequestMethod.POST)
	public String jmLoginPost(String u_id, String u_pw , HttpSession session,
							RedirectAttributes rttr) throws Exception{
		
		boolean result = jmMemberService.selectMemberUserIdPw(u_id, u_pw);
		System.out.println("result:"+result); 
		if(result ==true) {
			
			session.setAttribute("u_id", u_id);
			System.out.println("ssession:"+session);
			String targetLocation = (String)session.getAttribute("targetLocation");
			System.out.println("targetLocation:"+targetLocation);
			if(targetLocation !=null && !targetLocation.equals("")) {
				
				session.removeAttribute("targetLocation");
				return "redirect:"+targetLocation;
			}
			return "redirect:/";
		}	
		rttr.addFlashAttribute("msg","fail");
		return "redirect:/jm/jm_login";
		
	}
	@RequestMapping(value="logout" ,method=RequestMethod.GET)
	public String jmlogout(HttpSession session)throws Exception{
		session.invalidate();
		return "redirect:/jm/jm_login";
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
	
	//관리자 페이지- 일반회원 리스트 조회
	@RequestMapping(value="jm_userList",method=RequestMethod.GET)
	public String selectList(Model model) throws Exception{
			List<JmMemberVo> list = jmMemberService.selectList();
			model.addAttribute("list",list);
		return "jm/jm_userList";
	}
	
	
}
