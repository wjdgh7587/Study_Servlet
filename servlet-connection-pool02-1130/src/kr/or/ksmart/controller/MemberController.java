package kr.or.ksmart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ksmart.service.MemberService;

/**
 * Servlet implementation class MemberController
 */
//@WebServlet({ "/MemberController", "*.m" })
@WebServlet("/member/*")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private MemberService memberService;
	
	public MemberController() {
		super();
		this.memberService = new MemberService();
	}

	protected void doPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		// URI 치환 작업 시작
		String uri = request.getRequestURI();
		// URI 호출후, ContextPath() 부분 공백 처리
		uri = uri.replace(request.getContextPath(), "");
		//치환이 어떻게 작동하는지 하나씩 코드를 돌려보는것도 좋을 것 같다.
		if ("/member/*".equals(uri)) {
			// memberList로 mapping
			response.sendRedirect(request.getContextPath() + "/member/memberList");
		} else if ("/member/memberList".equals(uri)) {
			memberService.getMemberList();
			// 서비스 호출
			System.out.println("/memberList 호출 완료");
			// 생성자 메소드딴에서 호출하지 않고 호출
			//MemberService memberService = new MemberService();
			//생성자 메소드로 호출 결국은 똑같다.
			memberService.getMemberList();

		} else {
			// 아닐경우 404 에러 응답이 제대로 되면 202,
			response.setStatus(404);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPro(request, response);
	}

}
