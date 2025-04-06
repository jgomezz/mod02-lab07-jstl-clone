<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<!-- JSTL -->
<c:set scope="session" var="name" value="<b>David</b>"/>
Bienvenido <c:out value="Hola ${sessionScope.name}" default="Invitado" escapeXml="false"/>

<br>
<!-- SCRIPTLET -->
<% 
	session.setAttribute("name", "<b>David</b>");
	out.print("Bienvenido Hola " + session.getAttribute("name"));
%>


</body>
</html>