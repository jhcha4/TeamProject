package com.kh.team;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.domain.JmMemberVo;
import com.kh.team.jm.JmMemberDao;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class JmTestInsert {

	@Inject
	private JmMemberDao jmMemberDao;
	
	//회원가입
	@Test
	public void insertMember()throws Exception{
		
		JmMemberVo vo = new JmMemberVo();
		
		vo.setU_id("888787");
		vo.setU_pw("123");
		vo.setU_name("123");
		vo.setU_gender("f");
		vo.setU_email("123@123");
		vo.setU_address("123");
		vo.setU_phone("123");
		
		jmMemberDao.insertMember(vo);
		
	}
	//로그인
	@Test
	public void selectMemberUserIdPw() throws Exception{
		jmMemberDao.selectMemberUserIdPw("888787","123");
	}
	
	//관리자 게시판 - 리스트 조회
	@Test
	public void selectList() throws Exception{
		jmMemberDao.selectList();
	}
	
	
	//관리자 페이지- 일반회원 개인별 조회
	@Test
	public void selectByid()throws Exception{
		jmMemberDao.selectByid("123");
	}
		
		
	//관리자 페이지- 일반회원 수정
	@Test
	public void updateUser()throws Exception{
		
		JmMemberVo jmMemberVo = new JmMemberVo();
		jmMemberVo.setU_id("123");
		jmMemberVo.setU_name("999");
		jmMemberVo.setU_email("999@999");
		jmMemberVo.setU_address("999");
		jmMemberVo.setU_phone("999");
		jmMemberVo.setU_grade("silver");
		
		jmMemberDao.updateUser(jmMemberVo);
	}
	//관리자 페이지 - 일반회원 삭제
	@Test
	public void deleteUser()throws Exception{
	
		jmMemberDao.deleteUser("298d");
	}
	
	
	
	
	
	
}
