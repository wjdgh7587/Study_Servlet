<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MVC 1 웹의 흐름</title>
</head>
<body>
	<h1>MVC 이란??</h1>
	Model View Controller 을 통칭하며, Model에서는 비즈니스 로직이(주로 database에 관련된 작업이다. DAO),<br>
	 View에서는 화면단에서 이루어지는 부분이, Controller에서는 Model 처리를 위해 Model을 호출한다.
	 
	 
	 <h3>DTO</h3>
	 Data Transfer Object >> VO(Value Object)라고도 표현하는데, 계층간 데이터 교환을 위한 자바빈즈(Java Beans)다.<br>
	 일반적으로 DTO에서는 비즈니스 로직이 없고 setter/getter라는 데이터에 접근하여 값을 받고 반환하기만 존재한다.<br>
	 즉 DTO는 Database에서 Data를 얻어 Service나 Controller 등으로 보낼 때 사용하는 객체를 말한다.
	 
	 
	 <h3>DAO</h3>
	 Data Access Object >> Database에 data를 CRUD(Create, Read, Update, Drop)하는 계층이다.<br>
	 DAO를 쓰는 이유는 간단하다. Http request를 Web Application이 받게 되는 과정에서 Thread를 생성하게 된다. 하지만 <br>
	 비즈니스 로직이 DB를 가져오기 위해 매번 Driver를 로딩 및 Connection 객체를 계속해서 생성하게 되면 메모리 딴에서 부담이 엄청나다. 
	 
	 <br><br>
	 <a href="<%=request.getContextPath()%>/MVC1/mvc1_index.jsp">MVC1 바로가기</a>
	 <a href="<%=request.getContextPath()%>/MVC2/mvc2_index.jsp">MVC2 바로가기</a>
	 
	
</body>
</html>