<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보</title>
</head>
<body>
	<h1>회원 목록</h1>
	
	<table border="1">
		<thead>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>권한</th>
				<th>이메일</th>
				<th>주소</th>
				<th>가입일자</th>			
				<td>상세보기</td>			
			</tr>
		</thead>
		<tbody>
			<c:forEach var="member" items="${memberList}">
				<tr>
					<td>${member.mId}</td>
					<td>${member.mName}</td>
					<td>${member.mLevel}</td>
					<td>${member.mEmail}</td>
					<td>${member.mAddr}</td>
					<td>${member.mRegDate}</td>				
					<td><a href="<%=request.getContextPath()%>/member/memberRead?mId=${member.mId }">
						${member.mId }</a>
					</td>			
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>