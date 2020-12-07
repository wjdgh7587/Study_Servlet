package kr.or.ksmart.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ksmart.connection.SqlConnector;
import kr.or.ksmart.dao.MemberDao;
import kr.or.ksmart.dto.MemberDto;

public class MemberService {
	//생성자로 하게 될 경우, 새로고침할 경우 거기서 끝나버리게 된다.
	
	//private Connection conn;
	//private MemberDao memberDao;
	
	/*public MemberService() {
		System.out.println("%%%%%%%%%%%%%%%%%%%%");
		
		Connection conn = SqlConnector.getConnection();
		MemberDao memberDao = new MemberDao(conn);
		//this.conn = SqlConnector.getConnection();
		//쿼리는 DAO에서 처리하는게 아니고 service 단에서 일괄 처리한다.
		//this.memberDao = new MemberDao(conn);
	}*/
	
	
	//배열 객체로 MemberDto
	public List<MemberDto> getMemberLevel(String mId){
		Connection conn = SqlConnector.getConnection();
		MemberDao memberDao = new MemberDao(conn);
		List<MemberDto> memberLevel = null;
		System.out.println("Conn test for memberLevel");
		
		try {
			memberLevel = memberDao.getMemberLevel(mId);
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) {
					conn.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}

		return memberLevel;
	}
	
	
	public MemberDto getMemberRead(String mId) {
		Connection conn = SqlConnector.getConnection();
		MemberDao memberDao = new MemberDao(conn);
		System.out.println("conn test ::::::"+conn);
		
		System.out.println("MemberRead 호출");
		MemberDto memberRead = null;
		
		//생성자 메소드를 통해서 작업을 하였지만, 리다이렉트시 connection 무너짐 따라서 밖으로 빼서 작업
		try {
			memberRead = memberDao.getMemberRead(mId);
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) {
					conn.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}

		return memberRead;
	}
	
	
	public List<MemberDto> getMemberList() {
		Connection conn = SqlConnector.getConnection();
		MemberDao memberDao = new MemberDao(conn);
		
		System.out.println("MemberService 호출");
		List<MemberDto> memberList = null;
		
		try {
			memberList = memberDao.getMemberList();
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) {
					conn.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}

		return memberList;
	}
	
	//Transition Test 트랜잭션 작업
	public int trProcessTest() {
		Connection conn = SqlConnector.getConnection();
		MemberDao memberDao = new MemberDao(conn);
		int result = 0;
		
		try {
			//트랜잭션은 서비스 딴에서 일어나는 기준으로 발생한다.
			//트랜잭션은 autocommit이 되서는 안된다.
			//autocommit false는 물리적으로 메모리에 저장이되고, 실제 쿼리가 작업이 되는 것은 아니다.
			
			conn.setAutoCommit(false);
			
			result += memberDao.trProcessTest1();
		    result += memberDao.trProcessTest2();
		    
		    conn.commit();
			
		}catch(SQLException e){
			//실패할 경우 0으로 초기화 실패했는데도 결과값이 있으면 문제가 된다.
			e.printStackTrace();
			result = 0;
		}finally {
			try {
				if(conn != null)  {
					conn.rollback();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result ;
	}
	
	//bt_test 연결
	public int btProcessTest(List<Map<String, Object>> params) {
		Connection conn = SqlConnector.getConnection();
		MemberDao memberDao = new MemberDao(conn);
		int result = 0;
		
		try {		
			
			conn.setAutoCommit(false);
			
			result = memberDao.btProcessTest(params);
		    conn.commit();
			
		}catch(SQLException e){
			//실패할 경우 0으로 초기화 실패했는데도 결과값이 있으면 문제가 된다.
			e.printStackTrace();
			result = 0;
		}finally {
			try {
				if(conn != null)  {
					conn.rollback();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result ;
	}


}

