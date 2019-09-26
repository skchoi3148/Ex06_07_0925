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
	String name=request.getParameter("name");
	if(name.equals("aaa")) {
		out.println("NullPointException 테스트 코드");
	}
	
 %>

위 코드는 의도된 에러 코드입니다. (NullPointException)

</body>
</html>