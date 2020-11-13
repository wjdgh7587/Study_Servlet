package kr.or.ksmart;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class ConnectionTest
 */
@WebServlet("/ConnectionTest")
public class ConnectionTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	  public ConnectionTest() {
	        super();        
	    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		try {
			//jndi lookup
			Context di = new InitialContext();
			Object look = di.lookup("java:comp/env/jdbc/connCall");
			//jndi로 가지고 온 객체를 DataSource 로 캐스팅
			DataSource ds = (DataSource) look;
			//DataSouce 객체를 활용하여 컨넥션 객체 가지고 오기
			Connection conn = ds.getConnection();
			System.out.println(conn);
			response.getWriter().append(conn.toString());
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();

		} catch (NamingException e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
