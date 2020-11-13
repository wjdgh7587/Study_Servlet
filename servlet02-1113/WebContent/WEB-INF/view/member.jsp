<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fn"
uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>MemberList</title>
</head>

<body>
	<h1>멤버리스트</h1>
	<!--  실습1. memberList 담긴 회원정보를 뷰단을 만들어
		 jstl, el를 활용하여 테이블 tabel tag로 회원정보를 출력하도록 하여라.-->

	<table border="1" width="100%">
		<thead>
			<td>이름</td>
			<td>나이</td>
		</thead>
		<c:forEach var="member" items="${memberList }">
			<tbody>
				<td>${member.memberName}</td>
				<td>${member.memberAge}</td>
			</tbody>
		</c:forEach>
	</table>
</body>

</html>