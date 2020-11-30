package kr.or.ksmart.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import kr.or.ksmart.dto.MemberDto;

public class MemberDao {

	private Connection conn;
	
	public MemberDao(Connection conn) {
		this.conn = conn;
		System.out.println(conn + " dao Connection");
	}
	
	//권한별 
	public List<MemberDto> getMemberLevel(String mId) throws SQLException{
		System.out.println("MemberLevel 호출 memberLevel");
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<MemberDto> listLevel = new ArrayList<MemberDto>();
		
		String sqlQuery = "";
		
		sqlQuery += "SELECT ";
		sqlQuery += "* ";
		sqlQuery += "FROM";
		sqlQuery += "tb_member_level";
		
		ps = conn.prepareStatement(sqlQuery);
		rs = ps.executeQuery();
		
		while(rs.next()) {
			MemberDto dto = new MemberDto();			
			dto.setmLevelName(rs.getString("level_name"));
			listLevel.add(dto);
		}
	
		System.out.println("rs_test :::: "+ rs);
	
		return listLevel;
	}
	
	
	//상세보기
	public MemberDto getMemberRead(String mId) throws SQLException {
		System.out.println("MemberDao 호출 memberReader");
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		MemberDto dto = null;
	
		
		ps = conn.prepareStatement("SELECT * FROM tb_member WHERE m_id = ?");
		ps.setString(1, mId);
		System.out.println("psCheck" + ps);
		rs= ps.executeQuery();
		System.out.println("rsCheck" + rs);
		
		if(rs.next()) {
			dto = new MemberDto();
			dto.setmId(rs.getString("m_id"));
			dto.setmPw(rs.getString("m_pw"));
			dto.setmName(rs.getString("m_name"));
			dto.setmLevel(rs.getInt("m_level"));
			dto.setmEmail(rs.getString("m_email"));		
			dto.setmAddr(rs.getString("m_addr"));
			dto.setmRegDate(rs.getString("m_reg_date"));
			
		}
		System.out.println("dto test"+dto);
		
		ps.close();
		rs.close();
		
		return dto;
	}
	
	
	// 배열 객체로
	public List<MemberDto> getMemberList() throws SQLException {
		
		System.out.println("MemberDao 호출");
		//두달째쯔음의 수업에서 진행하였다.. 잘 생각해보자
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<MemberDto> list = new ArrayList<MemberDto>();
		
		ps = conn.prepareStatement("SELECT m_id, m_pw, m_name, m_level, m_email, m_addr, m_reg_date" + 
				"	FROM tb_member");
		rs = ps.executeQuery();
		
		
		
		while(rs.next()) {
			MemberDto dto = new MemberDto();
			dto.setmId(rs.getString("m_id"));
			dto.setmPw(rs.getString("m_pw"));
			dto.setmName(rs.getString("m_name"));
			dto.setmLevel(rs.getInt("m_level"));
			dto.setmEmail(rs.getString("m_email"));		
			dto.setmAddr(rs.getString("m_addr"));
			dto.setmRegDate(rs.getString("m_reg_date"));
			
			list.add(dto);
		}
		
		ps.close();
		rs.close();
		
		return list;

	}
	//트랜잭션 작업
	public int trProcessTest1() throws SQLException {
		String sql = "UPDATE tb_member SET m_level=3 WHERE m_id = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1,  "id014");
		int result = ps.executeUpdate();
		ps.close();
		return result;
	}
	public int trProcessTest2() throws SQLException {
		String sql = "DELETE M FROM tb_member AS M WHERE M.m_id = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, "id014");
		int result = ps.executeUpdate();
		ps.close();
		return result;
	}
}
