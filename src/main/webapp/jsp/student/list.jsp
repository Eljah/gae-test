<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%--
  Created by IntelliJ IDEA.
  User: pawel
  Date: 20.07.13
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title></title>
</head>
<body>
<%@ include file="../links.jsp" %>
<table border="1">
	<th>
		<td>ID</td>
		<td>First Name</td>
		<td>Last Name</td>
		<td>Password</td>
		<td>Edit</td>
		<td>Delete</td>
	</th>
	<c:forEach var="student" items="${students}">
		<tr>
			<td>${student.id}</td>
			<td>${student.firstName}</td>
			<td>${student.lastName}</td>
			<td>${student.password}</td>
			<td>
				<a href="${pageContext.request.contextPath}/student/edit/${student.id}?type=raw">Edit raw</a><br/>
				<a href="${pageContext.request.contextPath}/student/edit/${student.id}?type=repo">Edit repo</a></td>
			<td>
				<a href="${pageContext.request.contextPath}/student/delete/${student.id}?type=raw">Delete raw</a><br/>
				<a href="${pageContext.request.contextPath}/student/delete/${student.id}?type=repo">Delete repo</a><br/>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="../links.jsp" %>
</body>
</html>