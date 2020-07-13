package com.kh.team.jm;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.team.domain.JmMemberVo;

@Service
public class JmMemberServiceImpl implements JmMemberService {

	@Inject
	private JmMemberDao jmMemberDao;
	
	//로그인
	@Override
	public boolean selectMemberUserIdPw(String u_id,String u_pw)  throws Exception{
		
		JmMemberVo vo = jmMemberDao.selectMemberUserIdPw(u_id, u_pw);
		System.out.println("loginVo:"+vo);
		if ( vo !=null) {
			return true;
		}
		
		
		return false;
	}
	//회원가입
	@Override
	public void insertMember(JmMemberVo vo) throws Exception{
		System.out.println(vo);
		jmMemberDao.insertMember(vo);

	}
	

}
