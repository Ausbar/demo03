<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cuerpo=request.getReader().readLine();
	String paramOp=request.getParameter("op");
	
	System.out.println("** esto lo escribe Enterprise.jsp en Catalina **");

	if (null==paramOp)
	{
		%>{"error":null}<%
	}
	else
	{
		%>{"error":true}<%
	}
%>