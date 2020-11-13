<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정 폼</title>
</head>
<body>

	<%-- ${memberRead.memberName}<br>
${memberRead.memberGender}<br>
${memberRead.memberAge}<br>
${memberRead.memberAddr}<br>
${memberRead.memberEmail}<br>
${memberRead.memberPw }<br>
${memberRead.memberId }<br> 
 
  --%>
	<form>

		아이디 <input type="text" value="${memberRead.memberId }"><br>
		비밀번호 <input type="text" value="${memberRead.memberPw }"><br>
		나이 <input type="text" value="${memberRead.memberAge }"><br>
		주소 <input type="text" value="${memberRead.memberAddr }"><br>
		이메일 <input type="text" value="${memberRead.memberEmail }"><br>
		이름 <input type="text" value="${memberRead.memberName }"><br>
		<label>
			<input type="radio" name="memberGender" value="남"
			<c:if test=""></c:if>
			>
		</label>
	

		<input type="radio" value="남"><br> <input type="button"
			value="수정하기">
	</form>

</body>
</html>