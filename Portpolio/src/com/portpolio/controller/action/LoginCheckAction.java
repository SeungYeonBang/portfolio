package com.portpolio.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.portpolio.dao.MemberDAO;
import com.portpolio.dto.MemberVO;

public class LoginCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String path = null;
		
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		MemberVO memberVO= memberDAO.selectMemberByUserid(userid);
		request.setAttribute("memberVO",  memberVO);
		
		if(memberVO.getPwd()==null||!memberVO.getPwd().equals(pwd)||memberVO.getPwd().equals("")) {
			System.out.println("비밀번호가 같지 않음");
			request.setAttribute("msg", "아이디 혹은 비밀번호가 일치하지 않습니다.");
			path = "member/login.jsp";
		}else {
			HttpSession session = request.getSession();//세션 생성
			session.setAttribute("userid", userid);
			path = "main.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
	}

}
