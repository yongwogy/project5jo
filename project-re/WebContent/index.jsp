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
	session.setAttribute("id", "admin");
	session.setAttribute("grade", "1");
%>

<script>
	location.href="./NoticeListAction.sh";
	/* location.href="./AdminListAction.sw"; */
</script>

</body>
</html>