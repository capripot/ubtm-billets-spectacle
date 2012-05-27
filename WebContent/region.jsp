<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="inc/header.inc.jsp" />

<!-- Document -->

<c:forEach var="nom" items="${nomRegion}">
<br>

<a href="Region?region=${nom}">${nom}</a>
<c:if test="${nom == region}">
<c:forEach var="nomspectacle" items="${nomspectacle}">
<br>
---<a href="Spectacle?spectacle=${nomspectacle}">${nomspectacle}</a>

</c:forEach>
</c:if>
</c:forEach>


<jsp:include page="inc/footer.inc.jsp" />