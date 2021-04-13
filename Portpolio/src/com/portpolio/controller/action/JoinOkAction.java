package com.portpolio.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portpolio.dao.MemberDAO;
import com.portpolio.dto.MemberVO;

public class JoinOkAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String birth = request.getParameter("YEAR")+"-"+request.getParameter("MONTH")+"-"+request.getParameter("DAY");
		
		MemberVO memberVO = new MemberVO();
		memberVO.setUserid(request.getParameter("userid"));
		memberVO.setPwd(request.getParameter("pwd"));
		memberVO.setName(request.getParameter("name"));
		memberVO.setBirth(birth);
		memberVO.setGender(request.getParameter("gender"));
		memberVO.setEmail(request.getParameter("email"));
		memberVO.setNationNum(request.getParameter("nationNum"));
		memberVO.setPhone(request.getParameter("phone"));
		
		System.out.println("userid : "+request.getParameter("userid"));
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.insertMember(memberVO);
		
		if(memberVO.getUserid()==null || memberVO.getUserid().equals("")) {
			request.setAttribute("msg", "회원가입에 실패했습니다.");
		}else {
			request.setAttribute("msg", "회원가입에 성공했습니다.");
		}
		
		new LoginAction().execute(request, response);
		
	}

}
