package com.kh.team.jm;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.team.domain.JmMemberVo;

@Repository
public class JmMemberDaoImpl implements JmMemberDao {

	
	public static final String NAMESPACE = "mappers.member-mapper.";
	
	@Inject
	private SqlSession SqlSession;
	
	//로그인
	@Override
	public JmMemberVo selectMemberUserIdPw(String u_id ,String u_pw) throws Exception{
		Map<String, String> paramMap = new HashMap<>();// 맵은 해쉬맵의 상위타입
		paramMap.put("u_id", u_id);
		paramMap.put("u_pw", u_pw);
		
		
		JmMemberVo vos = SqlSession.selectOne(NAMESPACE+"selectMemberUserIdPw" ,paramMap);
		return vos;
	}
	//회원 가입
	@Override
	public void insertMember(JmMemberVo vo) throws Exception{
		SqlSession.insert(NAMESPACE+"insertMember" ,vo);
		
	}
	
	//관리자 게시판-회원 리스트
	@Override
	public List<JmMemberVo> selectList() throws Exception {
		
		
		return SqlSession.selectList(NAMESPACE+"selectList");
	}
	
	
	//관리자 게시판-회원 개인 조회
	@Override
	public JmMemberVo selectByid(String u_id) throws Exception {
		
		return SqlSession.selectOne(NAMESPACE+"selectById", u_id);
	}
	
	//관리자 게시판-회원 정보 수정
	@Override
	public void updateUser(JmMemberVo jmMemberVo) throws Exception {
		SqlSession.update(NAMESPACE+"updateUser",jmMemberVo);
		
	}
	//관리자 게시판-일반 회원 삭제 
	@Override
	public void deleteUser(String u_id) throws Exception {
		SqlSession.delete(NAMESPACE+"deleteUser", u_id);
		
	}

}
