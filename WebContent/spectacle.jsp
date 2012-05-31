<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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