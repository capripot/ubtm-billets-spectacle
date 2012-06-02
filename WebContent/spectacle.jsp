<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="inc/header.inc.jsp" />
<c:forEach var="salle" items="${salles}">
<br><br>
${nomspectacle}
<a href="Salle?salle=${salle}">${salle}</a>
<br>
date de représentation :<br>
<c:forEach var="representation" items="${representations}">
<c:if test="${representation.nomSalle == salle}">
${representation.dateRepresentation}
</c:if>
</c:forEach>
<a href="#">Réserver</a>

</c:forEach>
<jsp:include page="inc/footer.inc.jsp" />