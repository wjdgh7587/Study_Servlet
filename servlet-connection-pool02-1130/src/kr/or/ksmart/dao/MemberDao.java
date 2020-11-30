package kr.or.ksmart.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import kr.or.ksmart.dto.MemberDto;

public class MemberDao {

	private Connection conn;
	
	public MemberDao(Connection conn) {
		this.conn = conn;
		System.out.println(conn + " dao Connection");
	}
	// 배열 객체로
	public List<MemberDto> getMemberList() throws SQLException {
		
		System.out.println("MemberDao 호출");
		
		conn.prepareStatement("SELECT m_id, m_pw, m_name, m_level, m_email, m_addr, m_reg_date" + 
				"	FROM tb_member");
		
		return null;

	}
}
