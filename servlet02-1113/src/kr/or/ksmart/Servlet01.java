package kr.or.ksmart;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ksmart.dto.MemberDto;

/**
 * Servlet implementation class Servlet01
 */
@WebServlet("/Servlet01")
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;


   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		
		//Attribute 담긴 키 명으로 el 표기법으로 표시 할 수 있다.
		
		request.setAttribute("myName", "홍길동");
		
		List<String> memeberNameList = new ArrayList<String>();
		for(int i = 0; i <10; i++) {
			memeberNameList.add("이순신"+ i);
		}
		request.setAttribute("memeberNameList", memeberNameList);
		
		MemberDto member = new MemberDto();
		member.setMemberName("홍길동");
		member.setMemberAge(20);
		
		request.setAttribute("member", member);
		
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("addr", "전주");
		map.put("memeberNameList",memeberNameList);
		
		request.setAttribute("map", map);
		
		HttpSession session =request.getSession();
		session.setAttribute("member", member);
		
		request.getRequestDispatcher("/WEB-INF/view/el-jstl.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
