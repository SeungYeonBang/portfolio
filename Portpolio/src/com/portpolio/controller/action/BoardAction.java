package com.portpolio.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portpolio.dao.BoardDAO;
import com.portpolio.dto.BoardVO;

public class BoardAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("boardAction 불림");
		
		BoardDAO boardDAO = BoardDAO.getInstance();
		List<BoardVO> boardList = boardDAO.selectAllBoards();
		request.setAttribute("boardList", boardList);
		
		String path = "board/board.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);

	}

}
