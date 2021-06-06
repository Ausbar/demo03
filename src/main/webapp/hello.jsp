<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
{"a":1,"b":2,"c":3,"date":"<%
	java.util.Date d=new java.util.Date();
	out.println(d);
%>"}