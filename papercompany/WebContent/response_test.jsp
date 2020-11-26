<%@ page language="java" contentType="application/json; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%
	String id = request.getParameter("sign_id");
		
	String[] idArray = {"11111111", "11111112", "11111113", "11111114", "11111115"};
	int result = 0;
	for(int i=0; i < idArray.length; i++) {
		if(idArray[i].equals(id)){
			result++;
			break;
		}
	} 
%>