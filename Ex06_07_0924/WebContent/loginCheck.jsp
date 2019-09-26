<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String id=request.getParameter("id");
	Date date=new Date();
	SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy/MM/DD hh:mm:dd");
	
	application.log(dateFormat.format(date)+" : ["+id+"]로그인");
%>

<%=id%>님 접속을 환영합니다.<br><br>
접속하신 날짜 및 시간은 <%=dateFormat.format(date) %> 입니다.

</body>
</html>