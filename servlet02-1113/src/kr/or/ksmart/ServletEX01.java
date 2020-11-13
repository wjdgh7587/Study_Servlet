package kr.or.ksmart;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEX01
 */
@WebServlet("*.do")
public class ServletEX01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/*
	 * 복습1. 서블릿과 ajax
	 * 아래의 조건대로 서블릿을 활용하여 url 맵핑을 하고, 실행하도록 하여라.
	 * 1. ajax 요청페이지 : call.do
	 * 2. 응답페이지 : result.do
	 * 3. call.do 에서 ajax를 활용하여 n1과 n2의 값을 result.do 에 전달하여
	 * n1과  n2의 합산 값을 call.do 전달하고 그 결과 값을 브라우저 콘솔창에 출력하도록 하여라.
	 * */
	
	protected void doPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println(uri + " : uri 치환 전");		
		
		uri = uri.replace(request.getContextPath(), "");
		System.out.println(uri + " : uri 치환1");
		
		uri= uri.replace(".do", "");
		System.out.println(uri + " : uri 치환2");
		
		String forwardPath = null;
		
		if("/*".equals(uri)) {
			response.sendRedirect(request.getContextPath()+"/main.do");
		}else if("/main".equals(uri)) {
			System.out.println("main.do uri 호출");
			forwardPath = "main.jsp";
		}else if("/call".equals(uri)) {
			System.out.println("call.do uri 호출");
			forwardPath = "call.jsp";
		}else if("/result".equals(uri)) {
			System.out.println("result.do uri 호출");
			
			//풀이 추가
			
			String n1 = request.getParameter("n1");
			String n2 = request.getParameter("n2");
			int intN1=0;
			int intN2 = 0;
			
		
			
			if(n1 != null && !"".equals(n2.trim())) {
				intN1 = Integer.parseInt(n1);
				
			}
			if(n1 != null && !"".equals(n2.trim())) {
				intN2 = Integer.parseInt(n2);
				
			}
			
			int result = intN1+intN2;
			
			
			
			response.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("application/json");
			PrintWriter out = response.getWriter();
			out.println("{\"result\":"+(result)+"}");
			out.flush();
			out.close();
			
			//내 풀이
			//result.jsp 파일을 추가하여서 따로 만들어서 구현하였다.
			//forwardPath = "result.jsp";
		}
		else {
			response.setStatus(404);
		}
		if(forwardPath != null) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/"+forwardPath);
			rd.forward(request, response);
		}
		
		
	}
	
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPro(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doPro(request, response);
	}

}
