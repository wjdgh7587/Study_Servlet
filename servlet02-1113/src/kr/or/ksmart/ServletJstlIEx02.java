package kr.or.ksmart;


import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ksmart.dto.*;

@WebServlet("/ServletJstlIEx02")
public class ServletJstlIEx02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		/********************************************************
		 * el, jstl 실습
		 * 실습1. memberList 담긴 회원 정보 수정 페이지라는 가정으로
		 * 회원 정보 수정페이지를 구성할 것이다.
		 * 아래의 데이터를 가지고 회원정보 수정 폼을 작성하고 데이터를 맵핑시키도록 하여라
		 *
		 ********************************************************/
		
		Map<String, Object>memberRead = new HashMap<String, Object>();
		memberRead.put("memberName",  "이순신");
		memberRead.put("memberGender", "남");
		memberRead.put("memberAge", 20);
		memberRead.put("memberAddr", "전주시");
		memberRead.put("memberEmail", "hong@ksmart.or.kr");
		memberRead.put("memberPw", 1234);
		memberRead.put("memberId", "hong");
		
		request.setAttribute("memberRead", memberRead);
	
		request.getRequestDispatcher("/WEB-INF/view/memberRead.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
