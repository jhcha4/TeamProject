package com.kh.team.cjh.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		String u_id = (String)session.getAttribute("u_id");
		
		
		//	로그인 되어 있지 않다면
		if (u_id == null || u_id.equals("")) {
			String uri = request.getRequestURI();				//	/board/selectBybno
			String queryString = request.getQueryString();		//	bno=1&page=1&perpage=10
			String targetLocation = uri;
//			System.out.println("queryString : " +queryString);
			if (queryString != null) {
				targetLocation += "?" + queryString;
			}
			//	사용자가 요청했던경로
			session.setAttribute("targetLocation", targetLocation);
			response.sendRedirect("/cjh/login");
			return false;		//	요청을 계속 진행하지 않음
		}
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}
}
