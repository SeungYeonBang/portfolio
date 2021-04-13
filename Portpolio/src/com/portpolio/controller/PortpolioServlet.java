package com.portpolio.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portpolio.controller.action.Action;



@WebServlet("/portpolio.do")
public class PortpolioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PortpolioServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		ActionFactory af = ActionFactory.getInstance(); //싱글톤
		Action action = af.getAction(command); //추상메서드
		if(action != null) {
			//페이지 실행
			action.execute(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); //한글깨짐 방지
		
		String command = request.getParameter("command");
		ActionFactory af = ActionFactory.getInstance(); //싱글톤
		Action action = af.getAction(command); //추상메서드
		if(action != null) {
			//페이지 실행
			action.execute(request, response);
		}
	}

}
