package kr.or.ksmart.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({"*.ksmart" })
public class Ksmart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println(uri + " : uri 치환 전");
		uri =uri.replace(request.getContextPath(),"");
		//확장자명 공백으로 치환하기
		uri =uri.replace(".ksmart","");
		
		System.out.println(uri + " : uri 치환 완료 후");
		
		String forwardPath = null;
		
		if("/*".equals(uri)) {
			response.sendRedirect(request.getContextPath()+"/main.ksmart");
		}else if("/main".equals(uri)) {
			System.out.println("main.ksmart uri 호출");
			forwardPath = "main.jsp";
//			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/main.jsp");
//			rd.forward(request, response);
		}else if("/join".equals(uri)) {
			System.out.println("join ksmart uri 호출");
			forwardPath = "join.jsp";
//			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/join.jsp");
//			rd.forward(request, response);
		}
		else if("/script".equals(uri)) {
			System.out.println("join ksmart uri 호출");
			PrintWriter out = response.getWriter();
			out.append("<script>");
			out.append("alert('안녕하세요')");
			out.append("</script>");
		}
		else {
			response.setStatus(404);
		}
		
		//반복적인 코드는 왠만하면 없애서 만들어야 한다.
		if(forwardPath != null) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/"+forwardPath);
			rd.forward(request, response);
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
