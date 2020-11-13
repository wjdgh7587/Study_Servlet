<%@ page language="java" contentType="json/application; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String n1 = request.getParameter("n1");
	String n2 = request.getParameter("n2");
	
	int intN1 = Integer.parseInt(n1);
	int intN2 = Integer.parseInt(n2);
	
    int result = intN1+intN2;
        


	System.out.println(result);
%>
{"result" : "<%= result%>"}