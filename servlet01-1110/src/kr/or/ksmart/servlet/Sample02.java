package kr.or.ksmart.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*******************************************************************************************
 *  서블릿에서 jsp 파일 포워드 하기
 *  
 *  - request 객체에 있는 포워드 객체를 활용하여 포워드를 할 수 있다.
 *  
 *  - 포워드 : 최종적인 출력을 위임하는 형태. 
 * 
 *  - 포워드가 진행되면서 request, response를 전달 할 수 있다.
 *  
 *   - 새로 생성되는 데이터는 request에 담아 위임하는 파일에 전달 할 수 있다.
 * @author Jeongho
 ********************************************************************************************
 */

@WebServlet("/Sample02")
public class Sample02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
