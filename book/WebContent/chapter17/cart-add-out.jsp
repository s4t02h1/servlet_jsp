<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.html" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="p" items="${cart}">
	<p>${p.id}:${p.name}:${p.price}</p><br>
</c:forEach>

<%@include file="../footer.html" %>