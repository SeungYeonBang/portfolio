package com.portpolio.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.portpolio.dao.MemberDAO;
import com.portpolio.dto.MemberVO;

public class BoardWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("userid");
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		MemberVO memberVO = memberDAO.selectMemberByUserid(userid);
		request.setAttribute("memberVO", memberVO);
		
		String path = "board/board_write.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
	}

}
