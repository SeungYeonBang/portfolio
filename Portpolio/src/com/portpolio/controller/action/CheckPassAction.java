package com.portpolio.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portpolio.dao.BoardDAO;
import com.portpolio.dto.BoardVO;

public class CheckPassAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = null;
		//내용을 받음
		int num = Integer.parseInt(request.getParameter("num"));
		String pass = request.getParameter("pass");
		System.out.println("num : "+num);
		System.out.println("pass : "+pass);
		
		BoardDAO boardDAO = BoardDAO.getInstance();
		BoardVO boardVO = boardDAO.selectBoardByNum(num);
		
		if(!boardVO.getPwd().equals(pass)) {
			path = "board/board_check_pass.jsp";
			request.setAttribute("msg", "비밀번호가 잘못되었습니다.");
		}else {
			path="board/check_sucess.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
