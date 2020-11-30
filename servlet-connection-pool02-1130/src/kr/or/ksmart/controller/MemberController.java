package kr.or.ksmart.controller;

import java.io.IOException;
import java.sql.SQLException;

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
	private final static String SERVICE_NAME = "/member/";
	private final static String VIEW_PATH = "/WEB-INF/view/member/";
	//final은 대문자로 선언한다. 변하지 않는 것들
	
	public MemberController() {
		super();
		this.memberService = new MemberService();
	}

	protected void doPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{


		// URI 치환 작업 시작
		String uri = request.getRequestURI();
		// URI 호출후, ContextPath() 부분 공백 처리
		uri = uri.replace(request.getContextPath(), "");
		//치환이 어떻게 작동하는지 하나씩 코드를 돌려보는것도 좋을 것 같다.
		
		//Forward처리
		String forwardPath = null;
		
		if (uri.equals(SERVICE_NAME+"*")) {
			// memberList로 mapping
			response.sendRedirect(request.getContextPath() + SERVICE_NAME+"memberList");
		} else if (uri.equals(SERVICE_NAME+"memberList")) {
		
			// 서비스 호출
			// 생성자 메소드딴에서 호출하지 않고 호출
			//MemberService memberService = new MemberService();
			//생성자 메소드로 호출 결국은 똑같다.
			
			//memberService.getMemberList();
			
			//Spring에서 Model model과 비슷함
			request.setAttribute("memberList", memberService.getMemberList());
			
			forwardPath = "memberList";

			System.out.println(SERVICE_NAME+"memberList 호출 완료");
		}

		
		//상세보기 
		else if(uri.equals(SERVICE_NAME+"memberRead")) {
			System.out.println(SERVICE_NAME+" memberRead 페이지 호출");
			String mId = request.getParameter("mId");
			System.out.println(mId);
			
			request.setAttribute("memberLevel", memberService.getMemberLevel(mId));
			request.setAttribute("memberRead", memberService.getMemberRead(mId));			
			
			forwardPath = "memberRead";
		
			
			System.out.println(SERVICE_NAME+" memberRead 호출 완료");
			

		}		
		//트랜잭션
		else if(uri.equals(SERVICE_NAME+"tr_test")) {
			int result = memberService.trProcessTest();
			System.out.println(result + " ::: 실행결과");
		}
		
		
		else {
			// 아닐경우 404 에러 응답이 제대로 되면 202,
			response.setStatus(404);
		}
		/********************************************************
		 * forwardpath가 null이 아니라면 forward 실행
		 ********************************************************/

		if(forwardPath != null) {
			request.getRequestDispatcher(VIEW_PATH+ forwardPath +".jsp").forward(request, response);
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
