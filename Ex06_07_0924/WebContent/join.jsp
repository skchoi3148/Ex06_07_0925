<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>작성하신 내용은 다음과 같습니다.</h2>
<%
 		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8"); 
		response.setCharacterEncoding("utf-8");

		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String id=request.getParameter("id");
		String address=request.getParameter("address");
		String telNumber=request.getParameter("telNumber");
		String eMail=request.getParameter("eMail");
		String[] hobby=request.getParameterValues("hobby");

		out.println("이름 : "+name+"<hr>");
		out.println("성별 : "+gender+"<hr>");
		out.println("아이디 : "+id+"<hr>");
		out.println("주소 : "+address+"<hr>");
		out.println("전화번호 : "+telNumber+"<hr>");
		out.println("이메일주소 : "+eMail+"<hr>");
		
		out.println("취미 : <br>");
		if(hobby==null) {
			out.println("[선택한 취미가 없습니다.]");
		}else {
			for(String str : hobby) {
				out.println("<table border='1' cellpadding='0' cellspacing='0' width='200'>");
				out.println("<tr><th>"+str+"</th></tr>");
			}
			out.println("</table>");
		}
%>

</body>
</html>