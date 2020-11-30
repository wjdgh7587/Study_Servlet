package kr.or.ksmart;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import kr.or.ksmart.connection.SqlConnector;



/**
 * Servlet implementation class Sample
 */
@WebServlet("/Sample")
public class Sample extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		/*****************************/
		//Class(SqlConnector) 딴에서 호출해서 사용하는 방법 이를 위해 static 선언(직접 접근 허용)
		System.out.println(SqlConnector.getConnection());
		
		/*****************************/
		//기본적인 방법
		/*String connectionInfo = "";
		String getConnectionInfo = "";
		
		try {
			Context context = new InitialContext();
			Object look = context.lookup("java:comp/env/jdbc/connCall");
			DataSource ds = (DataSource) look;
			
			Connection conn = ds.getConnection();
			connectionInfo = ds.toString();
			getConnectionInfo = ds.getConnection().toString();			
			
			//간단하게 화면단에 나오게 하기
			response.getWriter().append(conn.toString());
		}catch(Exception e){
			e.printStackTrace();
		}*/
		
		//화면딴에 변수 받아서 직접적으로 뿌리기
		/*PrintWriter out = response.getWriter();
		out.write("Served at: " + request.getContextPath()+"<br>");
		out.write("dataSource info : " + connectionInfo+"<br>");
		out.write("connection info : " +getConnectionInfo);
		out.close();
		out.flush();*/
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPro(request, response);
	}

}
