<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>el-jstl</title>
</head>

<body>


	<h1>el</h1>
	- request에 담긴 값을 el 표기 법으로 받을 수 있다.
	<br> ${myName}
	<br> ${memeberNameList}
	<br>


	<h4>객체 el로 출력</h4>

	${member}
	<br> ${member.memberName}
	<br> ${member.memberAge}
	<br>


	<%-- 	${member.memberName }<br>
	${member.memberAge }<br>
	 --%>

	${map }
	<br> ${map.addr }
	<br> ${map.memeberNameList }
	<br>

	<h1>내장객체</h1>
	<h4>param</h4>
	${param}
	<br> ${param.name}
	<!-- ?name=홍길동 -->

	<h4>sessionScope</h4>
	${sessionScope }
	<br> ${sessionScope.member }
	<br> ${sessionScope.member.memberName}

	<h4>pageContext</h4>
	${pageContext.request.contextPath }

	<h1>jstl</h1>
	<h4>set</h4>
	<c:set var="userName" value="고길동" />
	${userName }

	<h4>out</h4>
	<c:out value="${userName }" />

	<h4>if</h4>
	<c:if test="${myName eq '홍길동'}">
		홍길동입니다.
	</c:if>

	<h4>choose, when, otherwise</h4>
	<c:choose>
		<c:when test="${sessionScope.member eq '홍길동' }">
			홍길동인데요.
		</c:when>

		<c:when test="${sessionScope.member eq '이순신' }">
			이순신입니다.
		</c:when>
		
		<c:otherwise>
			사람이 없어요.
		</c:otherwise>
	</c:choose>

	<h4>foreach</h4>
	<c:forEach var="n" begin="1" end="10" varStatus="i">
		${n }/${i.index }/${i.count }<br>
	</c:forEach>
	<c:forEach var="member" items="${memeberNameList }" varStatus="i">
		${member }/${i.index }/${i.count }<br>
	</c:forEach>
	
	${fn:replace(myName, '홍', '구')}
	
	<h4>url</h4>
	<c:url var="moveUrl" value="/Servlet01">
		<c:param name="memberName" value="홍길동"></c:param>
		<c:param name="memberAddr" value="전주"></c:param>
	</c:url>
	<a href="${moveUrl }">이동</a>

</body>

</html>