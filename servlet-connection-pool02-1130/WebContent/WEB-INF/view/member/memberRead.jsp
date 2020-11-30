<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버상세보기</title>
</head>
<body>
	<h1>${mId}목록</h1>
	<form action="#" method="post">
		<!-- 
		Get방식과 Post 방식은 주소 요청이 다르기 때문에 둘이 요청이 가능하다.
		
		처음 memberController에서 get방식맵핑을 하였음
	 -->
		<table border="1">
			<tr>
				<td>회원아이디</td>
				<td><input class="m_id" type="text"  value="${memberRead.mId}"></td>
			</tr>
			<tr>
				<td>회원비밀번호</td>
				<td><input class="m_pw" type="text" name="memberPw"  value="${memberRead.mPw }"></td>
			</tr>
			<tr>
				<td>회원비밀번호 확인</td>
				<td><input class="m_pw" type="text" name="memberPw"  value="${memberRead.mPw }"></td>
			</tr>
			
			<tr>
				<td>회원이름</td>
				<td><input class="m_name" type="text" name="memberName" value="${memberRead.mName }"></td>
			</tr>
			<tr>
				<td>회원권한</td>
				<td><select calss="m_level" name="memberLevel"  value= "${memberRead.mLevel}">
						<option value="1">관리자</option>
						<option value="2">판매자</option>
						<option value="3">구매자</option>
					</select></td>
			</tr>
			<tr>
				<td>회원이메일</td>
				<td><input type="text" name="memberEmail" value="${memberRead.mEmail }"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="memberAddr"  value = "${memberRead.mAddr }"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;">
					<button id="btntest" type="submit"><a href="#">수정</a></button>
					<button id="btntest" type="submit"><a href="#">삭제</a></button>

				</td>
			</tr>

		</table>


	</form>
</body>
</html>