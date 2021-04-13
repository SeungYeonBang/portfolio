package com.portpolio.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portpolio.dao.MemberDAO;
import com.portpolio.dto.MemberVO;

public class IdCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("userid");
		System.out.println("userid : "+userid);
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		MemberVO memberVO = memberDAO.selectMemberByUserid(userid);
		
		request.setAttribute("userid", userid);
		request.setAttribute("memberVO", memberVO);
		
		String path="member/id_check.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);

	}

}
