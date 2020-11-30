package kr.or.ksmart.connection;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class SqlConnector {
	//매번 new 연산자를 써서 가져올 필요는 없는 클래스이다. 
	//이유는??
	
	
	private final static String JNDI_NAME = "jdbc/connCall";
	//변하지 않는 값 세팅(final)
	
	public static Connection getConnection() {
		Connection conn = null;
		
		try {
			//jndi lookup
			Context di = new InitialContext();
			Object look = di.lookup("java:comp/env/"+JNDI_NAME);
			//jndi로 가지고 온 객체를 DataSource 로 캐스팅
			DataSource ds = (DataSource) look;
			//DataSouce 객체를 활용하여 컨넥션 객체 가지고 오기
			conn = ds.getConnection();
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();

		} catch (NamingException e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	
		return conn;
	}
}
