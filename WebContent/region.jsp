<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="inc/header.inc.jsp" />

<ul>
<c:forEach var="nom" items="${nomRegion}">
<li>
<a href="Region?region=${nom}">${nom}</a>
	<c:if test="${nom == region}">
	<ul>
		<c:forEach var="nomspectacle" items="${nomspectacle}">
			<li><a href="Spectacle?spectacle=${nomspectacle}">${nomspectacle}</a></li>
		</c:forEach>
	</ul>
	</c:if>
</li>
</c:forEach>
</ul>

<jsp:include page="inc/footer.inc.jsp" />