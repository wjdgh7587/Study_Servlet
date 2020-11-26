package com.papercompany.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println(uri + " : uri 치환 전");
		uri =uri.replace(request.getContextPath(),"");
		uri =uri.replace(".ksmart","");
		System.out.println(uri + " : uri 치환 완료 후");
		
		String forwardPath = null;
		
		if("/*".equals(uri)) {
			response.sendRedirect(request.getContextPath()+"/main/index");
		}else if("/index".equals(uri)) {
			System.out.println("join ksmart uri 호출");
			forwardPath = "index.jsp";
//			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/join.jsp");
//			rd.forward(request, response);
		}
		else {
			response.setStatus(404);
		}
		if(forwardPath != null) {
			RequestDispatcher rd = request.getRequestDispatcher("/main/"+forwardPath);
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
