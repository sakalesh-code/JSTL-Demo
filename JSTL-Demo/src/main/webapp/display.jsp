<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${label}"></c:out>
	<br> rollNo : ${stud.rollNo}
	<br> students : ${studList}<br><br>
	<c:forEach items="${studList}" var="s">
		rollNo : ${s.rollNo} - ${s.name}   <br>
	</c:forEach> 

</body>
</html>