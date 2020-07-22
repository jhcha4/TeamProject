package com.kh.team.jm;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.domain.JmMemberVo;
import com.kh.team.domain.JmPagingDto;

@Controller
@RequestMapping("/jm")
public class Jm_ManagerController {

	@Inject
	private JmMemberService jmMemberService;
	
	
	
		// 관리자 페이지- 일반회원 리스트 조회 - 페이징 기능 추가
		@RequestMapping(value = "/jm_userList", method = RequestMethod.GET)
		public String selectList(JmPagingDto jmPagingDto, Model model) throws Exception {
			System.out.println("/jm_userList, jmPagingDto:" + jmPagingDto);
			jmPagingDto.setPageInfo();
			
			int totalCount = jmMemberService.selectUserCount(jmPagingDto);
			
			jmPagingDto.setTotalCount(totalCount);
			
			List<JmMemberVo> list = jmMemberService.selectUserPaging(jmPagingDto);
			model.addAttribute("list", list);
			return "jm/jm_userList";
		}

		// 관리자 페이지- 일반회원 개인별 정보 조회
		@RequestMapping(value = "/jm_userUpdate", method = RequestMethod.GET)
		public void selectById(String u_id, Model model) throws Exception {
			JmMemberVo jmMemberVo = jmMemberService.selectByid(u_id);
			model.addAttribute("jmMemberVo", jmMemberVo);
		}

		// 관리자 페이지- 일반회원 수정
		@RequestMapping(value = "/jm_userUpdate", method = RequestMethod.POST)
		public String userUpdate(JmMemberVo jmMemberVo) throws Exception {
			jmMemberService.updateUser(jmMemberVo);

			return "redirect:/jm/jm_userList";
		}

		// 관리자 페이지- 일반회원 삭제
		@RequestMapping(value = "/jm_userDelete", method = RequestMethod.GET)
		public String userDelete(String u_id) throws Exception {
			jmMemberService.deleteUser(u_id);

			return "redirect:/jm/jm_userList";
		}
	
	
}
