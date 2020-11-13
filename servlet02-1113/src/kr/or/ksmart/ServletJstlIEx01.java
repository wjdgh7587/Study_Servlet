package kr.or.ksmart;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ksmart.dto.*;

@WebServlet("/ServletJstlIEx01")
public class ServletJstlIEx01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<MemberDto> memberList = new ArrayList<MemberDto>();
		MemberDto member = null;
		
		member = new MemberDto();
		member.setMemberAge(20);
		member.setMemberName("홍길동");
		memberList.add(member);
		
		member = new MemberDto();
		member.setMemberAge(22);
		member.setMemberName("고길동");
		memberList.add(member);
		
		member = new MemberDto();
		member.setMemberAge(30);
		member.setMemberName("이순신");
		memberList.add(member);
		
		member = new MemberDto();
		member.setMemberAge(34);
		member.setMemberName("둘리");
		memberList.add(member);
		
		/********************************************************
		 * el, jstl 실습
		 * 실습1. memberList 담긴 회원정보를 뷰단을 만들어
		 * jstl, el를 활용하여 테이블 tabel tag로 회원정보를 출력하도록 하여라.
		 ********************************************************/
		
		HttpSession session =request.getSession();
		session.setAttribute("member", member);
		
		
		request.setAttribute("memberList", memberList);
		
		request.getRequestDispatcher("/WEB-INF/view/member.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
