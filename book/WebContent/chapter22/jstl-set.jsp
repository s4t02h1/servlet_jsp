<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

抽選結果：
<c:set var="ret" value="${Math.random()}"/>
<c:if test="${ret < 0.5}">
	あたり！
</c:if>
<c:if test="${ret >= 0.5}">
	はずれ、残念
</c:if>
<c:remove var = "ret"/>

<%@include file="../footer.html" %>