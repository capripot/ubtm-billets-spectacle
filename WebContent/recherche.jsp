<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<jsp:include page="inc/header.inc.jsp" />

<!-- Document -->


<br>
Resultat de votre recherche :
<br>

<ul>
	<c:forEach var="spectacle" items="${spectacles}">
	<li><a href="Spectacle?spectacle=${spectacle.nomSpect}">${spectacle.nomSpect}</a></li>
	</c:forEach>
</ul>
<jsp:include page="inc/footer.inc.jsp" />