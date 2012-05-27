<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:include page="inc/header.inc.jsp" />
<c:forEach var="representation" items="${representations}">
<br>
${representation.nomSpectacle}
${representation.dateRepresentation}
<a href="Salle?salle=${representation.nomSalle}">${representation.nomSalle}</a>
</c:forEach>
<jsp:include page="inc/footer.inc.jsp" />