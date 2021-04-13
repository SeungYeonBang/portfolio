package com.portpolio.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portpolio.dao.BoardDAO;
import com.portpolio.dto.BoardVO;

public class BoardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		BoardVO boardVO = new BoardVO();
		boardVO.setNum(Integer.parseInt(request.getParameter("num")));
		boardVO.setName(request.getParameter("name"));
		boardVO.setPwd(request.getParameter("pwd"));
		boardVO.setEmail(request.getParameter("email"));
		boardVO.setTitle(request.getParameter("title"));
		boardVO.setContent(request.getParameter("content"));
		
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.updateBoard(boardVO);
		
		new BoardAction().execute(request, response);

	}

}
