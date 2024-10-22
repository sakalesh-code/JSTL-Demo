<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="getServlet" method="get">
		id: <input type="text" name="id"><br> 
		name: <input type="text" name="name"><br> 
		<input type="submit">
	</form>
	<c:out value="${label}"></c:out>
	<br> rollNo : ${stud.rollNo}
	<br> students : ${studList}
	<br>
	<br>
	<c:forEach items="${studList}" var="s">
		rollNo : ${s.rollNo} - ${s.name}   <br>
	</c:forEach>
	<br> Using sql:::
	<br>
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/practice" user="root" password="9502" />
	<sql:query var="rs" dataSource="${db}">SELECT * FROM gadgets;</sql:query>
	<c:forEach items="${rs.rows}" var="gadget">
		<c:out value="${gadget.gid}"></c:out>
		<c:out value="${gadget.gname}"></c:out>
		<br>
	</c:forEach>
	<br> Using function:::
	<br>
	<c:set var="str" value="Iam a java developer"></c:set>
	<c:out value="${str}"></c:out>
	<br>
	<br> Length is : ${fn:length(str)}
	<br>
	<br>
	<c:forEach items="${fn:split(str,' ')}" var="s">
	${s}<br>
	</c:forEach>
	<br>
	<br> Index is ${fn:indexOf(str,"j")}
	<br>
	<br> is there ${fn:contains(str,"java")}
	<br>
	<br>
	<c:if test="${fn:contains(str,'java')}">
		java is there
	</c:if>
	<br>
	<br> lower : ${fn:toLowerCase(str)}
	<br>
	<br> upper : ${fn:toUpperCase(str)}



</body>
</html>