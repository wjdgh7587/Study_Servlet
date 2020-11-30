package kr.or.ksmart.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import kr.or.ksmart.connection.SqlConnector;
import kr.or.ksmart.dao.MemberDao;
import kr.or.ksmart.dto.MemberDto;

public class MemberService {
	
	private Connection conn;
	private MemberDao memberDao;
	
	public MemberService() {
		this.conn = SqlConnector.getConnection();
		//쿼리는 DAO에서 처리하는게 아니고 service 단에서 일괄 처리한다.
		this.memberDao = new MemberDao(conn);
	}
	
	
	//배열 객체로 MemberDto
	public List<MemberDto> getMemberList() throws SQLException{
		
		System.out.println("MemberService 호출");

		return memberDao.getMemberList();
	}
}
