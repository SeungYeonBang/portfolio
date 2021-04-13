package com.portpolio.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portpolio.dao.BoardDAO;
import com.portpolio.dto.BoardVO;

public class BoardWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardVO boardVO = new BoardVO();
		boardVO.setTitle(request.getParameter("title"));
		boardVO.setEmail(request.getParameter("email"));
		boardVO.setName(request.getParameter("name"));
		boardVO.setPwd(request.getParameter("pwd"));
		boardVO.setContent(request.getParameter("content"));
		
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.insertBoard(boardVO);
		
		new BoardAction().execute(request, response);
	}

}
