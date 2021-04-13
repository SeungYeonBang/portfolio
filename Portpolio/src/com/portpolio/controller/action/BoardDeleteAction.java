package com.portpolio.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portpolio.dao.BoardDAO;
import com.portpolio.dto.BoardVO;

public class BoardDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println("num : "+num);
		
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.deleteBoard(num);
		BoardVO boardVO = boardDAO.selectBoardByNum(num);
		
		new BoardAction().execute(request, response);
	}

}
